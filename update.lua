localPath = scriptPath()
imagePath = (localPath .. "image/")
newestVersion = loadstring(httpGet("https://raw.githubusercontent.com/rk00/swakl/main/version.txt"))
currentVersion = dofile(localPath .. "version.txt")
if currentVersion == newestVersion then
  toast("Running latest version")
else
  httpDownload("https://raw.githubusercontent.com/rk00/swakl/main/update.lua")
end

while true do
  wait(5)
end
