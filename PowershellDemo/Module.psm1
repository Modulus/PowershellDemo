<#
	My Function
#>
function Get-Function {
	return "Hello"
}

function Get-Something{

	$Site = Get-AzureWebSite OctoTestSite1

	return $Site
}
