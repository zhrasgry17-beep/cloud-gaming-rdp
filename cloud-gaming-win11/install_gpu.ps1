Write-Host "=== NVIDIA GPU Driver Installer ===" -ForegroundColor Green

# Create temp directory
$TempDir = "C:\GPU-Driver"
New-Item -ItemType Directory -Force -Path $TempDir | Out-Null
Set-Location $TempDir

# Download NVIDIA driver (RTX / A-Series / Tesla)
$DriverURL = "https://us.download.nvidia.com/Windows/Quadro_Certified/552.44/552.44-quadro-rtx-desktop-win10-win11-64bit-international-dch.exe"
$DriverEXE = "nvidia-driver.exe"

Write-Host "Downloading NVIDIA Driver..."
Invoke-WebRequest -Uri $DriverURL -OutFile $DriverEXE

# Silent install
Write-Host "Installing NVIDIA Driver..."
Start-Process -FilePath $DriverEXE `
  -ArgumentList "-s -noreboot" `
  -Wait

Write-Host "Driver installation completed." -ForegroundColor Cyan
Write-Host "PLEASE RESTART THE SYSTEM." -ForegroundColor Yellow

