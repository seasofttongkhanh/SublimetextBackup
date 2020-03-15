@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\node_modules\@bmewburn\js-beautify\js\bin\js-beautify.js" %*
) ELSE (
  @SETLOCAL
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\node_modules\@bmewburn\js-beautify\js\bin\js-beautify.js" %*
)