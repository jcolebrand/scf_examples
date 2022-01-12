function Reset-FibonacciSequence {
<#
.SYNOPSIS
    Resets the fibonacci sequence used with Get-NextFibonacciNumber
#>
    $script:left = 0
    $script:right = 1
}