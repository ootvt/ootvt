@echo off
:: 防止中文乱码
chcp 65001 >nul
cd /d "%~dp0"

echo ==========================================
echo        🚀 正在全自动发布...
echo ==========================================

:: 1. 添加文件
git add .

:: 2. 自动提交（直接用时间做备注，不再询问）
set msg=Auto update: %date% %time%
git commit -m "%msg%"

:: 3. 推送
echo.
echo 正在推送到 GitHub...
git push

echo.
echo ==========================================
if %errorlevel% == 0 (
    echo    ✅ 成功！窗口将在 5 秒后自动关闭...
) else (
    echo    ❌ 出错了！请保留窗口检查报错信息。
    :: 如果出错，为了防止你看不到报错，这里会暂停等你按键
    pause
    exit
)

:: 成功后等待 5 秒自动退出，无需按回车
timeout /t 5