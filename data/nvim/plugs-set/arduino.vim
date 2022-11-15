" Location path of arduino binary
let g:arduino_cmd = '/usr/share/arduino/arduino'
" Location path of arduino directory
let g:arduino_dir = '/usr/share/arduino'

autocmd BufNewFile,BufRead *.ino :lua require("notify")("Detecting an arduino workspce, using arduino configuration")
