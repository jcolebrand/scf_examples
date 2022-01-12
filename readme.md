## In this repository

There are several language examples of how to calculate the fibonacci sequence and add the values that are even until we hit a value in the sequence less than or equal to 4,000,000.

Rules:
Foreach number in the Fibonacci sequence
If we reach a number that is over the limit (default value: 4,000,000), end processing
If the number is less than the limit, and the number is even, we should add the value to an accumulator
When we end processing, we should return the accumulated value

### Ruby

There is a basic ruby file fib_adder.rb that has a fibonacci generator and a getSums method that takes a limit to generate to, for calculating the evens to that limit.

In a more complex scenario I would expect the fibonacci function to instead be a separate class that exposes a iterator method (eg: Next). For the purposes of this code example, that seemed overly engineered.

Provided is a rspec test that can be run from the root of the repository.

### PowerShell

There are two basic powershell functions, and a runme.ps1 file that demonstrates how to use them to calculate the fibonacci sequence and add the results

The Get-NextFibonacciNumber will use PowerShell's script scope to store the values of left, right in temporary memory (because script scope goes out of scope and is discarded when we end our script), and the Reset-FibonacciSequence will default the values back to the starting point.

This could also be done with a Class, but in PowerShell those are less common in my experience, so I stuck with functions

In a typical environment I would expect those functions to be in a module, and then the pester tests could override module functions for testing, if needed, but this is a simple example.

Also of note, there is no `yield` concept in PowerShell.

To test, using PowerShell 7 or later, with `Install-Module -Name Pester` having been installed, you can use `Invoke-Pester -Output Detailed` from the pwsh folder to see the test succeeds

### Why PowerShell and Ruby?

I feel like there is a lot of overlap on the test frameworks of RSpec and Pester, and I have a lot of familiarity with PowerShell, so thought it would be a good complement to the Ruby test to see it written a different way.

