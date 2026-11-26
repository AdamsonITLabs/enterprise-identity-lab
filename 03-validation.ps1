Import-Module ActiveDirectory
Get-ADDomain | Select-Object DNSRoot,NetBIOSName
Get-ADOrganizationalUnit -Filter * | Select-Object Name,DistinguishedName
Get-ADGroup -Filter 'Name -like "Lab-*"' | Select-Object Name,GroupScope
Resolve-DnsName -Type SRV _ldap._tcp.dc._msdcs.corp.adamsonlab.test
 dcdiag /test:Advertising /test:Services
