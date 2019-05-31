#where $1 is the file input, works on all platforms but needs ffmpeg properly installed

ffmpeg -i $1 -acodec pcm_s16le -f s16le -ac 1 -ar 16000 -acodec pcm_s16le $1.raw
wnb-slicer -file-name $1.raw
