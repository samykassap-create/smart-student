@echo off
chcp 65001 > nul
title تشغيل دليل الطالب الذكي - Smart Student Guide
cd /d "%~dp0"
echo =====================================================================
echo    🎓 جاري تشغيل تطبيق دليل الطالب الذكي (Smart Student Guide)...
echo =====================================================================
echo.

:: محاولة تشغيل خادم بايثون Flask
where python >nul 2>nul
if %errorlevel% equ 0 (
    echo [OK] تم العثور على بايثون، جاري تشغيل سيرفر الويب وفتح المتصفح...
    start "" "%~dp0index.html"
    python "%~dp0app.py"
) else (
    echo [INFO] جاري فتح واجهة التطبيق مباشرة في المتصفح...
    start "" "%~dp0index.html"
)

pause
