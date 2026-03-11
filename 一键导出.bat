@echo off
chcp 65001 >nul
echo ========================================
echo 一键导出独立版HTML
echo ========================================
echo.

echo [1/2] 正在转换Excel数据...
python convert_excel_to_json.py
if errorlevel 1 (
    echo [错误] 数据转换失败
    pause
    exit /b 1
)

echo.
echo [2/2] 正在导出独立版HTML...
python export_standalone.py
if errorlevel 1 (
    echo [错误] 导出失败
    pause
    exit /b 1
)

echo.
echo ========================================
echo 导出完成！
echo ========================================
echo.
echo 生成的文件：
echo   - 保费数据监控看板_最新版.html
echo.
echo 现在可以直接双击打开查看
echo 或者发送给别人使用
echo.
pause
