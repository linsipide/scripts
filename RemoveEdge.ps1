Start-Sleep -Seconds 40; $Explorer = "C:\USERS\$env:username\Documents\logon.txt"
if (Test-Path $Explorer -PathType leaf)
{
exit
}
else
{
rm "C:\USERS\$env:username\Desktop\Microsoft Edge.lnk"; rm "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Force -Recurse; Stop-Process -ProcessName explorer; New-Item C:\USERS\$env:username\Documents\logon.txt
}