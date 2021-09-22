# Vim Cmake plugin documentation

More documentation here: [vim cmake github](https://github.com/cdelledonne/vim-cmake)

## Overview

Vim Cmake is a plugin that allow you to link a cpp makefile to vim completion

## Dependencies

- [cmake](https://cmake.org/)

## Installation

In vim plug plugins call

```vim
Plug 'cdelledonne/vim-cmake'
```

## Tips and configuration

Here is a list of some variables you can set

|Variable                       |Value(s)                                             |Default value     |Effect                                              |
|-------------------------------|:---------------------------------------------------:|:----------------:|----------------------------------------------------|
|`g:cmake_command`              |Any                                                  |`cmake`           |Change the command you call cmake                   |
|`g:cmake_default_config`       |Any                                                  |`Debug`           |Change config                                       |
|`g:cmake_build_dir_location`   |Any path                                             |`.`               |Change the path of the makefile                     |
|`g:cmake_generate_options`     |Any                                                  |None              |Arguments when generating                           |
|`g:cmake_build_options`        |Any                                                  |None              |Arguments when building                             |
|`g:cmake_native_build_options` |Any                                                  |None              |Native arguments when building                      |
|`g:cmake_console_size`         |Any number                                           |`15`              |Height in characters of the console openned by cmake|
|`g:cmake_console_position`     |`botright`<br/>`botleft`<br/>`topright`<br/>`topleft`|`botright`        |Position of the console when it opens               |
|`g:cmake_jump`                 |`0`<br/>`1`                                          |`0`               |Focus the console window when opening it            |
|`g:cmake_jump_on_completion`   |`0`<br/>`1`                                          |`0`               |Focus the console window on completion              |
|`g:cmake_jump_on_error`        |`0`<br/>`1`                                          |`1`               |Focus the console window when an error happend      |
|`g:cmake_link_compile_commands`|`0`<br/>`1`                                          |`0`               |Link a compile_commands file                        |
|`g:cmake_root_markers`         |Any                                                  |`['.git', '.svn']`|The files to limit the root path                    |

And some commands

|Commands              |Effect                               |
|----------------------|-------------------------------------|
|CMakeGenerate[!]      |Generate build system                |
|CMakeClean            |Remove build system and build files  |
|CMakeBuild[!] [target]|Build a project                      |
|CMakeInstall          |Install build output                 |
|CMakeSwitch <config>  |Switch to another build configuration|
|CMakeOpen             |Open CMake console window            |
|CMakeClose            |Close CMake console window           |

Map the ones you want like the following

```vim
nmap <leader>cg :CMakeGenerate<CR>
```

## Use

To use this plugin, simply use your mappings
