
<#
.SUMMARY
Gather computer info for Autopilot import/assignment

.NOTES/REFERENCES

https://learn.microsoft.com/en-us/autopilot/add-devices

#>
 
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
New-Item -Type Directory -Path "C:\Temp"
Set-Location -Path "C:\Temp"
$env:Path += ";C:\Program Files\WindowsPowerShell\Scripts"
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
Install-Script -Name Get-WindowsAutopilotInfo
Get-WindowsAutopilotInfo -OutputFile AutopilotHWID.csv
