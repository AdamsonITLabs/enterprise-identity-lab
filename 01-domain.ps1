# Run only on a fresh, isolated lab server as administrator.
$ErrorActionPreference = 'Stop'
if ($env:COMPUTERNAME -ne 'DC01') { throw 'Rename the lab server DC01 and restart first.' }
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDeployment
$password = Read-Host 'Enter unique DSRM password' -AsSecureString
Install-ADDSForest -DomainName 'corp.adamsonlab.test' -DomainNetbiosName 'ADAMSONLAB' -InstallDns -SafeModeAdministratorPassword $password
