$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$zipDir = Join-Path $root "evidence_zips"
$sumDir = Join-Path $root "checksums"
$failed = $false
Get-ChildItem $zipDir -Filter "*.zip" | Sort-Object Name | ForEach-Object {
  $zip = $_
  $sumFile = Join-Path $sumDir ($zip.BaseName + ".sha256")
  if (!(Test-Path $sumFile)) {
    Write-Host "MISSING checksum: $($zip.Name)" -ForegroundColor Red
    $failed = $true
    return
  }
  $expected = ((Get-Content $sumFile -Raw).Trim() -split '\s+')[0].ToLower()
  $actual = (Get-FileHash $zip.FullName -Algorithm SHA256).Hash.ToLower()
  if ($expected -eq $actual) {
    Write-Host "OK  $($zip.Name)  $actual"
  } else {
    Write-Host "FAIL $($zip.Name)`n expected=$expected`n actual  =$actual" -ForegroundColor Red
    $failed = $true
  }
}
if ($failed) { exit 1 }
Write-Host "All evidence ZIP SHA-256 checks passed." -ForegroundColor Green
