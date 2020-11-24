@echo off
for /f "tokens=*" %%a in ('dir /s/b/a-d "*.html"')
do (
echo.%%a
ren "%%a" "%%~na.jsp"
)
pause