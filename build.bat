@echo off

set version=%date:~6,4%%date:~0,2%%date:~3,2%%time:~0,2%%time:~3,2%%time:~6,2%
set show=windows version: %version%
echo %show%

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

md release\win\%version%

copy build\win\package-debug.js  release\win\%version%\package.js
copy build\win\package-debug-min.js  release\win\%version%\package-min.js

echo Done!