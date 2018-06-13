using System;
using System.Diagnostics;

using MyModule;

namespace Testa
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            TestMcVersion();
        }

        static void TestMcVersion()
        {
            var v1 = new McVersion("1");
            var v2 = new McVersion("1.2");
            var v3 = new McVersion("1:1.2");
            var v4 = new McVersion("1.2pre");
            var v5 = new McVersion("1.1");

            Debug.Assert(v1.CompareTo(v1) == 0);
            Debug.Assert(v1.CompareTo(v2) == -1);
            Debug.Assert(v1.CompareTo(v3) == -1);
            Debug.Assert(v1.CompareTo(v4) == -1);
            Debug.Assert(v1.CompareTo(v5) == -1);

            Debug.Assert(v2.CompareTo(v1) == 1);
            Debug.Assert(v2.CompareTo(v2) == 0);
            Debug.Assert(v2.CompareTo(v3) == -1);
            Debug.Assert(v2.CompareTo(v4) == -1);
            Debug.Assert(v2.CompareTo(v5) == 1);
        }
    }
}
