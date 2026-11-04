<#
  Actualiza la copia del Motor que esta en motor/ con lo ultimo de main del repo del Motor.
  Solo copia lo versionado (nada de claves ni datos privados). Correrlo desde la raiz de este repo.
#>
$ErrorActionPreference = 'Stop'
$aqui  = $PSScriptRoot
$tmp   = Join-Path $env:TEMP ('motor-' + [guid]::NewGuid().ToString('N'))
git clone --depth 1 https://github.com/gabrielkasimierski-beep/motor.git $tmp
if (Test-Path (Join-Path $aqui 'motor')) { Remove-Item (Join-Path $aqui 'motor') -Recurse -Force }
New-Item -ItemType Directory (Join-Path $aqui 'motor') | Out-Null
git -C $tmp archive HEAD -o (Join-Path $tmp 'motor.zip')
Expand-Archive (Join-Path $tmp 'motor.zip') (Join-Path $aqui 'motor')
$rev = git -C $tmp rev-parse --short HEAD
Remove-Item $tmp -Recurse -Force
git -C $aqui add motor
git -C $aqui commit -m "chore: actualizar el Motor a $rev"
git -C $aqui push
Write-Output "Motor actualizado a $rev."
