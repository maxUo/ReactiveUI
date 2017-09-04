param($installPath, $toolsPath, $package)

try
{
  Get-Interface $package | ConvertTo-Json | Write-Host
  
  # https://msdn.microsoft.com/en-us/library/envdte80.solution2.aspx
  Get-Interface $dte.Solution ([EnvDTE80.Solution2]) | ConvertTo-Json | Write-Host
}
catch
{
  Write-Host $_
}

# still yolo