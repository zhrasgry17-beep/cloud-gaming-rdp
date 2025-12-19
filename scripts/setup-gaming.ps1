<powershell>

# فعال‌سازی RDP
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" `
 -Name "fDenyTSConnections" -Value 0

Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

# نصب درایور NVIDIA
Invoke-WebRequest `
 https://us.download.nvidia.com/tesla/527.41/nvidia-driver.exe `
 -OutFile nvidia.exe

Start-Process .\nvidia.exe -ArgumentList "-s" -Wait

# نصب Steam
Invoke-WebRequest `
 https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe `
 -OutFile steam.exe

Start-Process .\steam.exe -Wait

</powershell>
