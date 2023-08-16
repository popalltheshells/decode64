# Made with love by popalltheshells

function Decode-Base64Strings {
    param(
        [string]$url
    )
    
    $webRequest = [System.Net.WebRequest]::Create($url)
    $webResponse = $webRequest.GetResponse()
    $reader = New-Object System.IO.StreamReader($webResponse.GetResponseStream())
    $pageSource = $reader.ReadToEnd()
    $reader.Close()
    $webResponse.Close()
    
    $base64Strings = [System.Text.RegularExpressions.Regex]::Matches($pageSource, '(?<=base64,)[a-zA-Z0-9+/=]+')
    
    foreach ($match in $base64Strings) {
        $base64String = $match.Value
        $decodedBytes = [System.Convert]::FromBase64String($base64String)
        $decodedText = [System.Text.Encoding]::UTF8.GetString($decodedBytes)
        
        Write-Host "Base64 String: $base64String"
        Write-Host -ForegroundColor Red "Decoded Text: $decodedText"
        Write-Host ""
    }
}

while ($true) {
    $inputUrl = Read-Host "Enter a URL to decode Base64 strings from (or type 'exit' to quit)"
    
    if ($inputUrl -eq "exit") {
        break
    }
    
    Decode-Base64Strings -url $inputUrl
}

Write-Host "Script has been exited."
