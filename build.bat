:: @File: build.bat
:: @Description: packjs
::
:: @Author:  Pury <szwzjx@gmail.com>
:: @Version: 0.0.1
:: @Date:    2016-4-16
::
:: Copyright © 2015 - 2016 pury.org.   
:: All rights reserved.

@echo off

set version=%date:~6,4%%date:~0,2%%date:~3,2%%time:~0,2%%time:~3,2%%time:~6,2%
set show=windows version: %version%

echo Start...

cd.>build\win\package-debug.js

echo console.log("%show%");>>build\win\package-debug.js

for /f %%i in (files.txt) do (
	type %%i>>build\win\package-debug.js
	@echo.>>build\win\package-debug.js
	@echo.>>build\win\package-debug.js
	@echo %%i
)

call compress\compress.bat

echo %show%

echo Done!