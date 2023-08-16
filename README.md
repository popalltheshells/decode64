# decode64

<p align="center">
    <img src="your_image_url_here" alt="decode64 Logo" width="200"/>
</p>

## Overview

Welcome to **decode64**, a PowerShell script designed to simplify the process of decoding potential Base64-encoded strings found within web pages. Whether you're hunting for hidden clues, obfuscated hints, or even hardcoded secrets lurking within the page source, this script has got you covered.

## Motivation

As developers, we often encounter scenarios where obfuscated strings might contain valuable information, yet extracting that information can be a time-consuming task. **decode64** was created to streamline this process by automating the retrieval and decoding of Base64 strings from web pages.

## Features

- Effortless Decoding: Simply provide the script with the URL of the target web page, and let it take care of the rest.
- Uncover Hidden Information: In situations where developers have used Base64 to obscure content, this script can help unveil valuable insights.

## Usage

1. Clone this repository or download the PowerShell script.
2. Open a PowerShell window.
3. Navigate to the directory where the script is located.
4. Run the script using the command: `.\decode64.ps1`.

![image](https://github.com/popalltheshells/decode64/assets/6753178/ae65f768-7eeb-437d-9138-c341b5723353)


## Example

```powershell
PS C:\Path\To\Script> .\decode64.ps1
Enter a URL to decode Base64 strings from (or type 'exit' to quit)
> https://www.example.com
Base64 String: SGVsbG8gV29ybGQh
Decoded Text: Hello World!
