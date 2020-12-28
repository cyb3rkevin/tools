<# Powershell Script I wrote to start Exchange Server 2016 for an email server class project #>

<# start Exchange Server 2016 #>
Start-Service *exchange*

<# check all service components are in a running state #>
Get-Service *exchange* | select -Property Status,Name,DisplayName,StartType
