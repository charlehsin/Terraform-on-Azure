# Install-WindowsFeature is only for Windows Server. For Windows Client, use the following
# Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole, IIS-WebServer, IIS-CommonHttpFeatures, IIS-ManagementConsole, IIS-HttpErrors, IIS-HttpRedirect, IIS-WindowsAuthentication, IIS-StaticContent, IIS-DefaultDocument, IIS-HttpCompressionStatic, IIS-DirectoryBrowsing
Install-WindowsFeature -name Web-Server -IncludeManagementTools
New-Item C:\upload_files\created_file.txt
Set-Content C:\upload_files\created_file.txt 'Created by PowerShell'