using System;
using System.Management.Automation;
using System.Runtime.InteropServices;
using Mono.Unix.Native;

namespace MyModule
{
    [Cmdlet("Set", "Root")]
    public class ChangeRoot : PSCmdlet
    {
        [Parameter(Position=0,Mandatory=true)]
        public string Path { get; set; } = string.Empty;
        
        [DllImport("libc.so.6")]
        private static extern int getpid();

        [DllImport("libc.so.6")]
        private static extern int chroot(string path);
        protected override void EndProcessing()
        {
            var pid = getpid();
            string timestamp = DateTime.Now.ToString("u");
            this.WriteObject($"[{timestamp}] - {this.Path} - {pid}");
            var result = Syscall.chroot("/Pogo");
            this.WriteObject($"[{result}]");
            base.EndProcessing();
        }
    }
}