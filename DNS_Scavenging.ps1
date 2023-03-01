# DNS Scavenging https://learn.microsoft.com/en-us/powershell/module/dnsserver/get-dnsserverscavenging?view=windowsserver2022-ps
Get-DnsServerScavenging
Start-Sleep -Second 10 

Set-DnsServerScavenging -RefreshInterval 1.00:00:00 -Verbose -PassThru
