echo ----�������Ӧ�������ָ��----
echo 1.ִ�йػ�ָ��
echo 2.ִ��ȡ���ػ�ָ��
echo 3.�˳�������
:begin
choice /c:321
if errorlevel 3 goto gj 
if errorlevel 2 goto qx 
if errorlevel 1 goto tc 



:gj
echo ������ʱ�䣬����Ϊ��λ��������3600����һСʱ���Զ��ػ�������0���Զ��ػ�
set /p val=
shutdown -s -t %val%
if errorlevel 1 (echo ����ʧ�ܣ��Ѿ����ù���) ^
else (echo ����%val%����Զ��ػ�������ȡ���Զ��ػ�~)
goto begin

:qx
shutdown -a
if errorlevel 1 (echo ȡ���ػ�ʧ�ܣ�)^
else (echo ȡ���ػ��ɹ���)
goto begin


:tc
echo �ݰ�~
pause
exit