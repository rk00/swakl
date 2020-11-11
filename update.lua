localPath = scriptPath()
imagePath = (localPath .. "image/")
httpDownload("https://raw.githubusercontent.com/rk00/swakl/main/update.lua?token=b983b7a243cc3d5661e50e2674f27cb61d7dd5f6", localPath .. "main.lua")
