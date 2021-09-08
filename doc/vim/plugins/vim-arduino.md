# Vim arduino plugin documentation

More documentation here: [Vim arduino github](https://github.com/stevearc/vim-arduino)

## Overview

Vim arduino is a plugin that allow to use arduino cli in vim

You can do all the basic of the official arduino IDE (compile, transfert, console, ...)

## Dependencies

- [python3](https://www.python.org/downloads/)
- [nvim python3](../../doc/dotfiles/softwares_installations.md#pip-installations)
- [arduino-cli](https://arduino.github.io/arduino-cli/latest/installation/)

## Installation

In vim plug plugins call

```vim
Plug 'stevearc/vim-arduino'
```

## Tips and configuration

Commands list, so you can map them like this

```vim
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
```

|Command                  |Effect                                                    |
|-------------------------|----------------------------------------------------------|
|`ArduinoChooseBoard`     |Select the board you use (default: uno)                   |
|`ArduinoChooseProgrammer`|Select a custom programmer                                |
|`ArduinoChoosePort`      |Select the serial port the console use (default: 9600)    |
|`ArduinoVerify`          |Compile the project                                       |
|`ArduinoUpload`          |Compile the project and send it to the arduino board      |
|`ArduinoSerial`          |Open console                                              |
|`ArduinoUploadAndSerial` |Compile the project, send it to the board and open console|
|`ArduinoInfo`            |Display informations                                      |

Location of the arduino binary

```vim
let g:arduino_cmd = '/usr/share/arduino/arduino'
```

Location of the arduino projects

```vim
let g:arduino_dir = '/usr/share/arduino'
```

Add a status line to your airline

```vim
" my_file.ino [arduino:avr:uno] [arduino:usbtinyisp] (/dev/ttyACM0:9600)
function! ArduinoStatusLine()
  let port = arduino#GetPort()
  let line = '[' . g:arduino_board . '] [' . g:arduino_programmer . ']'
  if !empty(port)
    let line = line . ' (' . port . ':' . g:arduino_serial_baud . ')'
  endif
  return line
endfunction
augroup ArduinoStatusLine
  autocmd! * <buffer>
  autocmd BufWinEnter <buffer> setlocal stl=%f\ %h%w%m%r\ %{ArduinoStatusLine()}\ %=\ %(%l,%c%V\ %=\ %P%)
augroup END
```

## Use

To use this plugin, use your mappings
