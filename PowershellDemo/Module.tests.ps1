#
# This is a PowerShell Unit Test file.
# You need a unit test framework such as Pester to run PowerShell Unit tests. 
# You can download Pester from http://go.microsoft.com/fwlink/?LinkID=534084
#
Import-Module "$PSSCriptRoot\Module.psm1"


Describe "Get-Function" {
	Context "Function Exists" {
		It "Should Return" {
			Get-Function | Should Be "Hello"
		}
	}
}

<#Describe "Get-Something" {
	Context "Function Exists" {

		It "Gets called"{
			$Site = New-Object PSObject
			Add-Member -InputObject $Site -MemberType NoteProperty -Name Name -Value "Hi"
			Mock Get-AzureWebSite { $Site}
			Get-Something | Should Be "Hi"
		}
	}
}#>

<#Describe "Get-Something" {
	Context "Function Exists" {

		It "Gets called"{
			Mock -CommandName Get-AzureWebSite -MockWith { [PSCustomObject]@{ Name = 'Hi' } }
			Get-Something | Should Be "Hi"
		}
	}
}#>

Describe "Get-Something" {
	Context "Function Exists" {
		Mock Get-AzureWebSite { [PSCustomObject]@{ Name = 'Hi' } }
		It "Something"{
			Assert-VerifiableMocks
		}
		It "Gets called"{
	
			Get-Something | Should Be "Hi"
		}
	}
}