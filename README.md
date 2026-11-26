# Infrastructure & Security Evidence

This directory contains technical screenshots captured during the deployment, configuration and validation of the Enterprise Identity & Infrastructure Lab.

## 1. Network Infrastructure

- Windows 11 workstation configuration
- ICMP firewall configuration
- Network connectivity testing
- DHCP server installation and authorization
- DHCP scope configuration
- Client IP address and lease verification

## 2. Active Directory & Identity Management

- Active Directory Domain Services installation
- Active Directory forest validation
- DNS diagnostics
- Organizational unit configuration
- Security group administration
- Domain user provisioning
- Successful workstation domain join
- Domain user authentication

## 3. Access Control & File Security

- Healthcare department folder configuration
- NTFS permissions
- SMB share permissions
- Security group membership
- Role-based access control configuration

## 4. Group Policy & Security Hardening

- Account lockout policy
- Password policy hardening
- Domain password policy validation
- Workstation organizational unit assignment
- Enterprise Workstation Security GPO
- Windows Defender Firewall configuration
- Advanced Audit Policy configuration

## 5. Security Validation

- Workstation Group Policy verification
- Windows Defender Firewall status
- Microsoft Defender Antivirus protection
- Workstation authentication audit policy

## Technical Environment

| Component | Configuration |
|---|---|
| Server | Windows Server 2022 |
| Client | Windows 11 |
| Virtualization | Microsoft Hyper-V |
| Domain | corp.adamsonlab.test |
| Domain Controller | DC01 |
| Workstation | CLIENT01 |
| Network | 192.168.50.0/24 |
| DHCP Range | 192.168.50.100 - 192.168.50.200 |

## Evidence Library

[Browse all technical screenshots](./)

## Project Documentation

- [Project Overview](../README.md)
- [Testing and Validation](../TESTING.md)

## Project Status

Deployed and partially validated in an isolated lab environment. Screenshots document configuration and observed test results, rather than full production security compliance.
