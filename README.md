## Welcome to the WinGUI-DropDown wiki!
A beautiful dropdown for Windows 11 that can show options to users and get input & automate actions based on the options selected.
The example has a gif that gives an aura to your popup window. Inspiration from [here](https://docs.microsoft.com/en-us/powershell/scripting/samples/).

If you wish to keep it static, just change the related file here:

`# Bring Your Own Brand Image
$imgPersona = [System.Drawing.Image]::Fromfile('C:\Windows\Temp\GUI-DropDown\boringBanner.gif')`

`# Bring an abstract footer
$img = [System.Drawing.Image]::Fromfile('C:\Windows\Temp\GUI-DropDown\footer.png')`

![](https://github.com/laeeqhumam/WinGUI-DropDown/blob/main/Screenshot-demo.gif)

Output example:
![](https://github.com/laeeqhumam/WinGUI-DropDown/blob/main/Screenshot-Output.png)

The front banner image can be changed to suit your company standards. 

Users can select the item from the dropdown. All items in dropdown can be changed here from line 67 - 72.

`[void] $ddownService.Items.Add('I want a MacBook Pro')`

`[void] $ddownService.Items.Add('I want a Yoga')`

`[void] $ddownService.Items.Add('I want an iPad Pro')`

`[void] $ddownService.Items.Add('I want Jarvis')`

`[void] $ddownService.Items.Add('I give a damn')`

`[void] $ddownService.Items.Add('I want as my manager')`








