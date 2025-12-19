Invoke-WebRequest `
  -Uri "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" `
  -OutFile "SteamSetup.exe"

Start-Process SteamSetup.exe -Wait

