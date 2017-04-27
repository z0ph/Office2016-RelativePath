# Installation Office 2016 from USB Key
# VGR - 09/03/17

# Current folder of the running .ps1 file
$PS1dir = [System.IO.Path]::GetDirectoryName($myInvocation.MyCommand.Definition)

# Path of the configuration
$conf = "$($PS1dir)\conf_FR.xml"

# Current path with reformated end of XML line
$PS1dirEOL = "$($PS1dir)`">"

# Replace old line with the current folder
(Get-Content $conf) -replace '<Add OfficeClientEdition=.*', ('<Add OfficeClientEdition="32" Channel="FirstReleaseDeferred" SourcePath="'+$PS1dirEOL) | Set-Content $conf

# Running Office 2016 installation from new configuration file
$exec = "$($PS1dir)\setup.exe"
& $exec /configure $conf