param([Parameter(Mandatory=)][string],[Parameter(Mandatory=)][string],[int]=1920,[int]=1080)
 = "Stop"
if (-not (Get-Command ffmpeg -ErrorAction SilentlyContinue)) { throw "ffmpeg not found" }
if (-not (Test-Path -LiteralPath )) { throw "Input not found: " }
ffmpeg -y -i  -vf "scale=:flags=lanczos" -c:v libx264 -preset slow -crf 16 -c:a aac -b:a 192k -movflags +faststart 
if ( -ne 0) { throw "ffmpeg failed" }
