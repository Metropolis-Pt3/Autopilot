
<#
.SUMMARY
Gather autopilot info and upload to Intune

.NOTES/REFERENCES

https://learn.microsoft.com/en-us/autopilot/add-devices

#>

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
Install-Script -Name Get-WindowsAutopilotInfo -Force
Get-WindowsAutopilotInfo -Online
