#Remove-Alias xgit
Function global:exec-in-each-git-repo
{
	param(
		 [string]$cmd
	 )
	 process{
	 	$currDir = Get-Location
		$dir = Get-ChildItem -Path C:\work\repos\.git -Force -Recurse; # Get list of all GIT repositories in parent folder C:\work\repos\
		$dir | ForEach-Object {
			cd $_.FullName;
			cd ..;
			Write-Host ("Running: git " + $cmd + " in GIT repo " + (Get-Location).Path) -foreground Green;
			Invoke-Expression ('git ' + $cmd);
		}
	 	Set-Location $currDir
	 }
}
New-Alias -Scope global -Name xgit -Value exec-in-each-git-repo
