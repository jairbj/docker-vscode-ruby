#Import versions
. .\versions.ps1

#Does a loop in each Dockerfile folder and build each image
Get-ChildItem -Recurse -Directory Dockerfile | ForEach-Object {
  Write-Output "--- BUILDING $($_.Name)"
  #Build image
  $cmd="docker build -t ${image}:$($_.Name) Dockerfile/$($_.Name)"
  Write-Output $cmd
  Invoke-Expression $cmd
}