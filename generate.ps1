#Import versions
. .\versions.ps1

#Load Dockerfile template
$template = Get-Content ".\Dockerfile.template"

#Remove older dockerfiles
Remove-Item -Force -Recurse .\Dockerfile

#Generate each version
foreach ($version in $versions) {    
    Write-Output "Generating Dockerfile for tag $($version['tag'])"

    #Create the tag directory
    $dir = ".\Dockerfile\$($version['tag'])"
    mkdir $dir | Out-Null   
    
    #Render template into a Dockerfile
    $template | ForEach-Object {        
        $_  -replace '%%TAG%%', $version['tag'] `
            -replace '%%RUBY_VERSION%%', $version['ruby_version'] `
    } | Set-Content "$dir\Dockerfile"
}