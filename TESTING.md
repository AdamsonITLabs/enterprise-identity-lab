# Infrastructure and Security Testing Report

## Test Environment

- Project: Enterprise Identity & Infrastructure Lab
- Administrator: Adamson Ahmed
- Testing dates: November 25–26, 2026
- Server: Windows Server 2022 (DC01)
- Workstation: Windows 11 (CLIENT01)
- Virtualization: Microsoft Hyper-V
- Domain: corp.adamsonlab.test

## 1. Infrastructure Testing

| Test | Actual Result | Status |
|---|---|---|
| Windows Server deployment | Server installed successfully | PASS |
| Hyper-V private network | Server and client connected | PASS |
| Network connectivity | Four successful ping replies, 0% packet loss | PASS |
| Active Directory installation | AD DS installed successfully | PASS |
| Domain and forest | Domain and forest verified | PASS |
| DNS diagnostics | DC01 and domain DNS tests passed | PASS |

## 2. Identity and Access Management

| Test | Actual Result | Status |
|---|---|---|
| Organizational units | 10 departmental and functional OUs created | PASS |
| Security groups | 8 global security groups created | PASS |
| User provisioning | 6 employee accounts created and enabled | PASS |
| Workstation domain join | CLIENT01 joined the corporate domain | PASS |
| Domain authentication | CORP\ebrown successfully authenticated | PASS |
| Computer organization | CLIENT01 moved to Workstations OU | PASS |

## 3. Role-Based Access Control

| Test | Actual Result | Status |
|---|---|---|
| Healthcare group membership | Emily Brown verified as a member | PASS |
| SMB permissions | Healthcare group granted Change access | PASS |
| NTFS permissions | Healthcare group granted Modify access | PASS |
| Authorized access | Healthcare employee accessed the share | PASS |
| File creation | Healthcare test file created successfully | PASS |
| Unauthorized access | Finance employee denied access | PASS |

## 4. DHCP Testing

| Test | Actual Result | Status |
|---|---|---|
| DHCP installation | DHCP server role installed | PASS |
| DHCP authorization | DC01 authorized in Active Directory | PASS |
| DHCP scope | 192.168.50.100–192.168.50.200 active | PASS |
| Automatic IP assignment | CLIENT01 received 192.168.50.100 | PASS |
| DNS assignment | Client received 192.168.50.10 | PASS |
| DHCP lease | Active client lease confirmed | PASS |

## 5. Domain Password Policy

| Security Control | Actual Result | Status |
|---|---|---|
| Minimum password length | 14 characters | PASS |
| Password complexity | Enabled | PASS |
| Password history | 24 passwords | PASS |
| Minimum password age | 1 day | PASS |
| Account lockout threshold | 5 invalid attempts | PASS |
| Account lockout duration | 15 minutes | PASS |
| Reversible encryption | Disabled | PASS |

These results confirm the effective domain policy settings. Actual account lockout behavior has not yet been tested.

## 6. Endpoint Security Testing

| Test | Actual Result | Status |
|---|---|---|
| Group Policy update | Successfully completed | PASS |
| Workstation security GPO | Applied to CLIENT01 | PASS |
| Domain firewall | Enabled | PASS |
| Private firewall | Enabled | PASS |
| Defender real-time protection | Enabled | PASS |
| Tamper protection | Enabled | PASS |
| Network inspection | Enabled | PASS |
| On-access protection | Enabled | PASS |
| Antivirus quick scan | Completed | PASS |

## 7. Security Audit Policy

| Audit Policy | Actual Result | Status |
|---|---|---|
| Logon | Success and Failure | PASS |
| Logoff | Success | PASS |
| Account Lockout | Failure | PASS |
| Special Logon | Success | PASS |

Audit policy settings were verified using auditpol on CLIENT01. Actual security event generation remains pending.

## 8. Troubleshooting Performed

### Network Connectivity

Issue: Initial ping requests from CLIENT01 to DC01 timed out.

Resolution: Configured a restricted inbound ICMP firewall rule for the lab subnet.

Result: Network connectivity restored with zero packet loss.

### DHCP Command Execution

Issue: DHCP PowerShell commands were initially executed in Command Prompt on CLIENT01.

Resolution: Executed the commands using Administrator PowerShell on DC01.

Result: Active DHCP client lease successfully verified.

## 9. Pending Validation

- Actual account lockout behavior.
- Automatic screen lock behavior.
- Public firewall profile.
- Guest account security.
- Security event generation and Event Viewer analysis.
- Remaining endpoint security settings.

## 10. Supporting Evidence

Screenshots of the deployment, configuration, troubleshooting and validation are available in the project evidence folder.

[View Screenshot Evidence](./screenshots/)

## Conclusion

The core enterprise infrastructure was successfully deployed and tested in an isolated Hyper-V environment.

Active Directory, DNS, DHCP, domain authentication, departmental access controls, Group Policy and selected endpoint security controls were successfully validated.

Remaining security tests are documented as pending to maintain accurate reporting.

All accounts and departmental information used in this project are simulated.
