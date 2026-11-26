$ErrorActionPreference = 'Stop'
Import-Module ActiveDirectory
$base = (Get-ADDomain).DistinguishedName
if ($base -ne 'DC=corp,DC=adamsonlab,DC=test') { throw 'Wrong domain' }
foreach ($dept in 'IT','HR','Finance','Healthcare') {
 if (-not (Get-ADOrganizationalUnit -LDAPFilter "(ou=$dept)" -SearchBase $base -SearchScope OneLevel)) {
 New-ADOrganizationalUnit -Name $dept -Path $base -ProtectedFromAccidentalDeletion $true
 }
 $group = "Lab-$dept"
 if (-not (Get-ADGroup -Filter "Name -eq '$group'")) { New-ADGroup -Name $group -GroupScope Global -GroupCategory Security -Path "OU=$dept,$base" }
}
