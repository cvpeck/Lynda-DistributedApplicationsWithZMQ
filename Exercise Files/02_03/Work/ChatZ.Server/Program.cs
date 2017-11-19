using ChatZ.Common;
using fszmq;
using System;
using System.Collections.Generic;
using System.Linq;

using static System.Console;
using static ChatZ.Common.Protocol;
using static ChatZ.Server.Properties.Settings;

namespace ChatZ.Server
{
  public static class Program
  {
    public static void Main(string[] _args)
    {
      var lease   = Default.ClientLeaseSeconds;
      var control = string.Format($"{Default.HostAddress}:{Default.ControlPort}");
      var idle    = (long) Default.IdleMilliseconds;

      // initialize context

        // configure control socket
        
        // initialize server state
        while (true)
        {
          // purge expired clients
        
          // poll for next client request
        }
    }
  }
}
