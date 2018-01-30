using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace EventLogWriter
{
    class Program
    {
        static void Main(string[] args)
        {
            var source = "logwriter sample app";
            var log = "Application";
            var sEvent = "sample event";

            if (!EventLog.SourceExists(source))
            {
                EventLog.CreateEventSource(source, log);
            }
            EventLog.WriteEntry(source, sEvent);
        }
    }
}
