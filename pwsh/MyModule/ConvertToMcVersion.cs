using System;
using System.Management.Automation;

namespace MyModule
{
    [Serializable]
    public sealed class McVersion : IComparable<McVersion>
    {
        public string Version { get; private set;}
        public int Epoch { get; private set; }
        public string Upstream { get; private set; }
        public string Revision { get; private set; }

        public McVersion(string version)
        {
            Version = version;
            version = version.ToLowerInvariant();

            var epochEnd = version.IndexOf(':');
            if (epochEnd > 0)
            {
                Epoch = int.Parse(version.Substring(0, epochEnd));
            }
            var upStart= epochEnd + 1;
            var upEnd = version.LastIndexOf('-');
            if (upEnd >= 0)
            {
                Upstream = version.Substring(upStart, upEnd - upStart);
                Revision = version.Substring(upEnd + 1);
            }
            else
            {
                Upstream = version.Substring(upStart);
                Revision = "0";
            }
        }

        private static int Compare(string a, string b)
        {
            int ia = 0;
            int ib = 0;
            while (ia < a.Length && ib < b.Length)
            {
                while (ia < a.Length && ib < b.Length && !char.IsDigit(a[ia]) && !char.IsDigit(b[ib]))
                {
                    if (a[ia] != b[ib])
                    {
                        if (a[ia] == '~') return -1;
                        if (b[ib] == '~') return 1;
                        return a[ia] < b[ib] ? -1 : 1;
                    }
                    ia++;
                    ib++;
                }

                if (ia < a.Length && ib < b.Length && (!char.IsDigit(a[ia])|| !char.IsDigit(b[ib])))
                {
                    if (a[ia] == '~') return -1;
                    if (b[ib] == '~') return 1;
                    return char.IsDigit(a[ia]) ? -1 : 1;
                }

                var numa = 0;
                while (ia < a.Length && char.IsDigit(a[ia]))
                {
                    numa = 10 * numa + (a[ia] - '0');
                    ia++;
                }
                var numb = 0;
                while (ib < b.Length && char.IsDigit(b[ib]))
                {
                    numb = 10 * numb + (a[ib] - '0');
                    ib++;
                }
                if (numa != numb)
                {
                    return numa < numb ? -1 : 1;
                }
            }

            if (ia >= a.Length && ib >= b.Length)
            {
                return 0;
            }
            if (ia < a.Length)
            {
                return a[ia] == '~' ? -1 : 1;
            }
            return b[ib] == '~' ? 1 : -1;
        }

        public int CompareTo(McVersion other)
        {
            int cmp = this.Epoch.CompareTo(other.Epoch);
            if (cmp == 0)
            {
                cmp = Compare(this.Upstream, other.Upstream);
                if (cmp == 0)
                {
                    cmp = Compare(this.Revision, other.Revision);
                }
            }
            return cmp;
        }

        // override object.Equals
        public override bool Equals(object obj)
        {
            if (obj is McVersion other)
            {
                return this.CompareTo(other) == 0;
            }
            return false;
        }
        
        // override object.GetHashCode
        public override int GetHashCode()
        {
            return this.Version.GetHashCode();
        }

        public override string ToString()
        {
            return $"{Epoch}:{Upstream}-{Revision}";
        }
    }

    [Cmdlet(VerbsData.ConvertTo, "McVersion")]
    public class ConvertToMcVersion : PSCmdlet
    {
        [Parameter(Position=0,Mandatory=true)]
        public string Version { get; set; } = string.Empty;

        protected override void EndProcessing()
        {
            this.WriteObject(new McVersion(this.Version));
        }
   }
}