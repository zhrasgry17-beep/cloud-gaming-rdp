Invoke-WebRequest `
  -Uri "https://builds.parsec.app/package/parsec-windows.exe" `
  -OutFile "parsec.exe"

Start-Process parsec.exe -ArgumentList "/silent" -Wait
