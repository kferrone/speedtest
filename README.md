# Speedtest
A docker image and k8s job for speedtest.net to test your speeds in the cloud. 

The image is a multi arch image for amd/64 and arm/64.

## Usage  

You must first acccept their license to use this software. This image makes this easy as you only need to set the environment variable `ACCEPT_LICENSE='true'`. If you don't the container will fail with an error telling you to do so. 

Below is the output of running `speedtest -h` and all options can be passed as args to the entrypoint. 

```
Usage: speedtest [<options>]  
  -h, --help                       Print usage information  
  -V, --version                     Print version number  
  -L, --servers                     List nearest servers  
  -s, --server-id=#                 Specify a server from the server list using its id  
  -I, --interface=ARG               Attempt to bind to the specified interface when connecting to servers  
  -i, --ip=ARG                      Attempt to bind to the specified IP address when connecting to servers  
  -o, --host=ARG                    Specify a server, from the server list, using its host's fully qualified domain name  
  -p, --progress=yes|no             Enable or disable progress bar (Note: only available for 'human-readable'  
                                    or 'json' and defaults to yes when interactive)  
  -P, --precision=#                 Number of decimals to use (0-8, default=2)  
  -f, --format=ARG                  Output format (see below for valid formats)  
  -u, --unit[=ARG]                  Output unit for displaying speeds (Note: this is only applicable  
                                    for ‘human-readable’ output format and the default unit is Mbps)  
  -a                                Shortcut for [-u auto-decimal-bits]  
  -A                                Shortcut for [-u auto-decimal-bytes]  
  -b                                Shortcut for [-u auto-binary-bits]  
  -B                                Shortcut for [-u auto-binary-bytes]  
      --selection-details           Show server selection details  
      --ca-certificate=ARG          CA Certificate bundle path  
  -v                                Logging verbosity. Specify multiple times for higher verbosity  
      --output-header               Show output header for CSV and TSV formats  

 Valid output formats: human-readable (default), csv, tsv, json, jsonl, json-pretty  

 Machine readable formats (csv, tsv, json, jsonl, json-pretty) use bytes as the unit of measure with max precision  

 Valid units for [-u] flag:  
    Decimal prefix, bits per second:  bps, kbps, Mbps, Gbps  
    Decimal prefix, bytes per second: B/s, kB/s, MB/s, GB/s  
    Binary prefix, bits per second:   kibps, Mibps, Gibps  
    Binary prefix, bytes per second:  kiB/s, MiB/s, GiB/s  
    Auto-scaled prefix: auto-binary-bits, auto-binary-bytes, auto-decimal-bits, auto-decimal-bytes  
```