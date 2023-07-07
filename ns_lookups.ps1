# Hacky Script to resolve hostnames (domains)
# Takes a text file containing all the DNS names, returns list of IP's and domains in one line 
Get-Content hostnames.txt | % { Compare-Object
   [string]::Join(" ", (nslookup -timeout=10 $_ 8.8.8.8   2>$null )[3..99])
   [string]::Join(" ", (nslookup -timeout=10 $_ 127.0.0.1 2>$null )[3..99])
}
