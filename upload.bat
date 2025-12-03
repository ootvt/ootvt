@echo off
:: 防止中文乱码
chcp 65001 >nul

:: 确保进入当前脚本所在的目录（防止你以后把快捷方式放到桌面时路径出错）
cd /d "%~dp0"

echo ==========================================
echo        正在准备发布到 GitHub...
echo ==========================================
echo.

:: 1. 添加所有变动
echo [1/3] 正在添加文件 (git add)...
git add .

:: 2. 提交变动
echo.
echo [2/3] 正在提交更改 (git commit)...
set /p "msg=请输入提交说明 (直接回车 = 自动使用当前时间): "

:: 如果用户直接回车，就用默认的时间作为说明
if "%msg%"=="" set msg=Site update: %date% %time%

git commit -m "%msg%"

:: 3. 推送代码
echo.
echo [3/3] 正在推送到 GitHub (git push)...
git push

echo.
echo ==========================================
if %errorlevel% == 0 (
    echo    🎉 恭喜！发布成功！
    echo    Cloudflare/Vercel 会在几分钟后自动更新你的网站。
) else (
    echo    ❌ 出错了！请检查上方的红色报错信息。
)
echo ==========================================
echo.
pause