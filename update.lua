localPath = scriptPath()
imagePath = (localPath .. "image/")
latestVersion = loadstring(httpGet("https://raw.githubusercontent.com/rk00/swakl/main/version.txt"))
print(latestVersion)
