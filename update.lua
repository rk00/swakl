localPath = scriptPath()
imagePath = (localPath .. "image/")
httpDownload("https://raw.githubusercontent.com/rk00/swakl/main/update.lua?token=ADBAEXFWR2GZF57PIME5FPC7VPMGI", localPath .. "main.lua")
