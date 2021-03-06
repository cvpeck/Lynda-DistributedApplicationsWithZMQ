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
    public static Task Start(Config config, CancellationToken token) 
      => Task.Run(() => 
      {
        // initialize context

          // configure control socket
          
          // poll in a loop (unless told to shutdown)
          while (!token.IsCancellationRequested) 
          { 
    
          }
      }
      , token);
    
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
