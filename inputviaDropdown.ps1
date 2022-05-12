# Laeeq Humam - Apr 2022
# GUI for getting end user feedback
# Or for any kind of popup
# Parse the output as per the requirement
# Version 1.0

#-----------------------------------------------------------#
# Changes to be made before using.
# Line 96 and 106 has file path, change according to needs.
# Recommened to create a folder for automation related files images, binaries etc.
# Banner Resolution 800x148 - Animation was for fun, use png/jpg/whatever you like.
# Footer Resolution 800x22
#-----------------------------------------------------------#

Add-Type -AssemblyName System.Windows.Forms

$FormObject=[System.Windows.Forms.Form]
$LabelObject=[System.Windows.Forms.Label]
$ComboBoxObject=[System.Windows.Forms.ComboBox]


$DefaultFont='Verdana, 10'
$HeaderFont='Verdana, 16'

# Design the form now
$AppForm=New-Object $FormObject

$AppForm.ClientSize='840,600'
$AppForm.Text='Your Favorite IT Team'
$AppForm.BackColor='#ffffff'
$AppForm.Font=$DefaultFont
$AppForm.StartPosition = "CenterScreen"


# Make or Build it

$lblHeader=New-Object $LabelObject
$lblHeader.Text='WISH FOR A LAPTOP'
$lblHeader.AutoSize=$true
$lblHeader.Font=$HeaderFont
$lblHeader.Location=New-Object System.Drawing.Point(18,50)

$lblService=New-Object $LabelObject
$lblService.Text='Your Next Laptop:'
$lblService.AutoSize=$true
$lblService.Location=New-Object System.Drawing.Point(100,360)

$ddownFont='Verdana, 16'
$ddownService=New-Object $ComboBoxObject
$ddownService.Width='300'
$ddownService.Location=New-Object System.Drawing.Point(415,365)
$ddownService.Text='Choose from Dropdown'
$ddownService.Font=$ddownFont


# Feed in the services

# Method 1
# Get-Service | ForEach-Object {$ddownService.Items.Add($_.Name)}

# Method 2 - Doing in a UNIX style
#$Services=Get-Service

#foreach($service in $Services)  {
#    $ddownService.Items.Add($service.name)}

[void] $ddownService.Items.Add('I want a MacBook Pro')
[void] $ddownService.Items.Add('I want a Yoga')
[void] $ddownService.Items.Add('I want an iPad Pro')
[void] $ddownService.Items.Add('I want Jarvis')
[void] $ddownService.Items.Add('I give a damn')
[void] $ddownService.Items.Add('I want as my manager')

$Appform.Controls.Add($ddownService)

# Buttons

$okButton = New-Object System.Windows.Forms.Button
$okButton.Location = New-Object System.Drawing.Point(265,440)
$okButton.Size = New-Object System.Drawing.Size(125,40)
$okButton.Text = 'OK'
$okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$Appform.AcceptButton = $okButton
$Appform.Controls.Add($okButton)

$cancelButton = New-Object System.Windows.Forms.Button
$cancelButton.Location = New-Object System.Drawing.Point(405,440)
$cancelButton.Size = New-Object System.Drawing.Size(125,40)
$cancelButton.Text = 'Cancel'
$cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$Appform.CancelButton = $cancelButton
$Appform.Controls.Add($cancelButton)


# Bring Your Own Brand Image
$imgPersona = [System.Drawing.Image]::Fromfile('C:\Windows\Temp\GUI-DropDown\boringBanner.gif')
$personaBox = new-object Windows.Forms.PictureBox
$personaBox.Width = $imgPersona.Size.Width
$personaBox.Height = $imgPersona.Size.Height
$personaBox.Location=New-Object System.Drawing.Point(15,170)
$personaBox.Image = $imgPersona
$Appform.controls.add($personaBox)


# Bring an abstract footer
$img = [System.Drawing.Image]::Fromfile('C:\Windows\Temp\GUI-DropDown\footer.png')
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Width = $img.Size.Width
$pictureBox.Height = $img.Size.Height
$pictureBox.Location=New-Object System.Drawing.Point(15,570)
$pictureBox.Image = $img
$Appform.controls.add($pictureBox)


$AppForm.Controls.AddRange(@($lblService, $ddownService, $corpLogo, $lblHeader, $personaBox, $okButton, $cancelButton ))

# Lets Display it
$result = $Appform.ShowDialog()
#$AppForm.ShowDialog()

if ($result -eq [System.Windows.Forms.DialogResult]::OK)
{
    $x = $ddownService.SelectedItem
    $x
}else {
   echo "Cancelled"
}