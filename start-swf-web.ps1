$port = 8000
$root = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host ""
Write-Host "SWF web server dang chay tai: http://127.0.0.1:$port/swf-player.html" -ForegroundColor Green
Write-Host "Nhan Ctrl+C de dung server." -ForegroundColor Yellow
Write-Host ""

Set-Location $root
python -m http.server $port --bind 127.0.0.1
