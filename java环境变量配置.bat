@echo off


rem author： lxfhahaha（http://blog.csdn.net/lxfhahaha）
rem time:2017年10月5日02:16:56
rem msg:请将该文件放在jdk安装目录下，然后以管理员身份运行，即可自动配置java环境



title java环境配置
echo 一键配置java环境！
echo Tips：请在jdk安装目录下以管理员身份运行~~
set java_h=%~dp0
if "%java_h:~-1%" == "\"  set  java_h=%java_h:~0,-1%
echo 您当前路径为---%java_h%
echo 是否进行环境变量设置？[Y/n]


:shuru
set /p input=
if "%input%"=="Y" goto zhixing
if "%input%"=="y" goto zhixing
if "%input%"=="N" goto guanbi
if "%input%"=="n" goto guanbi
echo 输入错误，请重新输入！[Y/n]
goto shuru

:zhixing
echo -----
echo JAVA_HOME:
setx "JAVA_HOME" "%java_h%
echo -----
echo CLASSPATH:
setx "CLASSPATH" ".;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar;"
echo -----
echo Path:
set p_=%Path%
set t_="java环境变量配置.data"
echo %p_% >%t_%
findstr /c:"%JAVA_HOME%\bin;%JAVA_HOME%\jre\bin;" %t_% >nul 2>&1
if %errorlevel% equ 0 (
  echo path无需配置！
  ) else (
 setx "Path" "%%JAVA_HOME%%\bin;%%JAVA_HOME%%\jre\bin;%Path%"

)
del %t_%
echo -----
pause
exit



:guanbi
echo byebye~~
pause
exit

