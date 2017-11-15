﻿using ChatZ.Common;
using fszmq;
using System;
using System.Reactive.Subjects;
using System.Threading;
using System.Threading.Tasks;

using static ChatZ.Common.Protocol;
using static System.Diagnostics.Trace;

namespace ChatZ.Client
{
  public static class Proxy
  {
    private static readonly Subject<ServerMessage.List> userStream_ = new Subject<ServerMessage.List>();

    public static Task Start(Config config, CancellationToken token) 
      => Task.Run(() => 
      {
        // initialize context
        using (var context = new Context())
        {
          // configure control socket
          var ctlSock = context.Dealer();
          ctlSock.SetOption(ZMQ.IDENTITY, config.Handle);
          ctlSock.SetOption(ZMQ.RCVTIMEO, config.Timeout);
          ctlSock.Connect(config.Control);

          // poll in a loop (unless told to shutdown)
          while (!token.IsCancellationRequested)
          {
            try
            {
              ctlSock.SendAll(HereMessage());

              var reply = ServerMessage.Decode(ctlSock.RecvAll());
              if (reply is ServerMessage.List msg) { userStream_.OnNext(msg); }
            }
            catch (TimeoutException)
            {
              WriteLine("Timeout while waiting for reply");
            }
          }
        }
      }
      , token);
    
    public static IObservable<ServerMessage.List> UserStream { get => userStream_; }

    /// <summary>
    /// Various settings used to turn ZMQ client behavior
    /// </summary>
    public sealed class Config
    { 
      public string Control { get; }
      public int    Timeout { get; }
      public string Handle  { get; }

      public Config(string control, int timeout, string handle)
      { 
        Control = control;
        Timeout = timeout;
        Handle  = handle;
      }
    }
  }
}