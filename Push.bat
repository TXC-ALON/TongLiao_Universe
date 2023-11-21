@echo off

REM 获取当前日期并格式化
for /f "tokens=1-3 delims=-" %%a in ('date /t') do (
    set "current_date=%%c-%%a-%%b"
)

REM 执行 Git 操作
git add .
git commit -m "edit %current_date%"
git push

REM 暂停等待用户按任意键继续
pause
