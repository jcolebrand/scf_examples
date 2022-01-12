function Get-NextFibonacciNumber {
<#
.SYNOPSIS
    Returns the next number in the fibonacci sequence
    Assumes we can run in script scope, so we can maintain state
    Does not reset. Can be reset by calling Reset-FibonacciSequence
#>
    $left = $script:left ?? 0
    $right = $script:right ?? 1
    $return = $left
    $script:left = $right
    $script:right = $left + $right
    return $return
}