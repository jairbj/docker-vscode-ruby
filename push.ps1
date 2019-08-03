#Import versions
. .\versions.ps1

#Does a loop in each Dockerfile folder and build each image
Get-ChildItem -Recurse -Directory Dockerfile | ForEach-Object {
  Write-Output "--- PUSHING $($_.Name)"
  
  #Push image
  $cmd="docker push ${image}:$($_.Name)"
  Write-Output $cmd
  Invoke-Expression $cmd
}
