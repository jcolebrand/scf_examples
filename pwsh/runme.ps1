#! /usr/local/bin/pwsh
# ensure our functions have been loaded into scope, or load them
# PowerShell does not have an easy way to do that
$scriptLocation = $PSScriptRoot
if ($null -eq ${function:Get-NextFibonacciNumber}) { . (Join-Path $scriptLocation "Get-NextFibonacciNumber.ps1")}
if ($null -eq ${function:Reset-FibonacciSequence}) { . (Join-Path $scriptLocation "Reset-FibonacciSequence.ps1")}

$sum = 0
while (($fibonacci = Get-NextFibonacciNumber) -le 4000000) {
    if ($fibonacci % 2 -eq 0) {
        $sum += $fibonacci
    }
}

Write-Host "Sum of even numbers of fibonnaci is $sum"

Reset-FibonacciSequence

Write-Output $sum