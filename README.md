# Office2016-RelativePath

I was trying to use Office Deployment Tool (ODT) using relative path for our Office 2016 ProPlus deployment (On USB Key & Hard Drive).

As USB Key are mounted each time with different letters depending on how many devices already mounted. I was stuck cause ODT XML Configuration file does not support relative path.

You can see this limitation on this page : [here](https://blogs.technet.microsoft.com/odsupport/2015/09/23/office-365-proplus-2016-couldnt-install-error-30029-1007-0-when-trying-to-install-using-the-office-deployment-tool-odt/)

To run this script on client computers, i'm using this simple launch cmd.

```powershell
powershell.exe -ExecutionPolicy bypass -File .\path\install.ps1
```

The idea was to read and replace the line with `SourcePath="Path"` with the current dir. Quick and Dirty.

That's All Folks! Hope this help.