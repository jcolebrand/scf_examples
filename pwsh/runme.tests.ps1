# assumes you are running Pester 4 or later, on PowerShell 7 or later (use of ?? operator is PowerShell 7)
# If you are running this in the folder pwsh, you can simply Invoke-Pester and it will run all the tests
# `Invoke-Pester -Output Detailed` gives a nicer output
# If you are on a mac and want to run this code, you should `brew install powershell` then run pwsh then `Install-Module -Name Pester`

Describe "Test runme file" {
    Context "Running the file" {
        BeforeAll {
            $sum = . (Join-Path $PSScriptRoot runme.ps1)
        }

        It "Should be 4613732" {
            $sum | Should -Be 4613732
        }
    }
}
