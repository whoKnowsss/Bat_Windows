@echo off


rem author�� lxfhahaha��http://blog.csdn.net/lxfhahaha��
rem time:2017��10��5��02:16:56
rem msg:�뽫���ļ�����jdk��װĿ¼�£�Ȼ���Թ���Ա������У������Զ�����java����



title java��������
echo һ������java������
echo Tips������jdk��װĿ¼���Թ���Ա�������~~
set java_h=%~dp0
if "%java_h:~-1%" == "\"  set  java_h=%java_h:~0,-1%
echo ����ǰ·��Ϊ---%java_h%
echo �Ƿ���л����������ã�[Y/n]


:shuru
set /p input=
if "%input%"=="Y" goto zhixing
if "%input%"=="y" goto zhixing
if "%input%"=="N" goto guanbi
if "%input%"=="n" goto guanbi
echo ����������������룡[Y/n]
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
set t_="java������������.data"
echo %p_% >%t_%
findstr /c:"%JAVA_HOME%\bin;%JAVA_HOME%\jre\bin;" %t_% >nul 2>&1
if %errorlevel% equ 0 (
  echo path�������ã�
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

