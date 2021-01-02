<# Powershell script I wrote to start Exchange Server 2016 for a class project #>

<# start server #>
Start-Service *exchange*

<# check all service components are in a running state #>
Get-Service *exchange* | select -Property Status,Name,DisplayName,StartType
