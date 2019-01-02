echo ----请输入对应数字完成指令----
echo 1.执行关机指令
echo 2.执行取消关机指令
echo 3.退出本程序
:begin
choice /c:321
if errorlevel 3 goto gj 
if errorlevel 2 goto qx 
if errorlevel 1 goto tc 



:gj
echo 请输入时间，以秒为单位，如输入3600，即一小时后自动关机；输入0即自动关机
set /p val=
shutdown -s -t %val%
if errorlevel 1 (echo 设置失败，已经设置过！) ^
else (echo 将于%val%秒后自动关机，可以取消自动关机~)
goto begin

:qx
shutdown -a
if errorlevel 1 (echo 取消关机失败！)^
else (echo 取消关机成功！)
goto begin


:tc
echo 拜拜~
pause
exit