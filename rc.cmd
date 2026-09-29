@echo off

doskey clear=cls
doskey ls=ls --color=auto $*

prompt $e[30;42m$p$e[0m$$$s

echo "%PATH%" | findstr /i /c:"%userprofile%\.script" >nul || set "PATH=%userprofile%\.script;%PATH%"
