@echo off
color f9
setlocal enabledelayedexpansion
set /a t1=0
set /a msg=6
cls

:start
echo.
echo          U            U
echo          U            U
echo          U            U
echo          U            U
echo          U            U               Universal963 Proudly Presents
echo          U            U
echo          U            U
echo          U            U
echo          U            U
echo          U            U
echo           U          U
echo            U        U
echo             U      U
echo                UU
echo.
ping -n 3 127.0.0.1 >nul
cls
color 07
goto main1

:main1
echo =====================================================================================
echo.
echo.
echo.
echo.
echo.
echo.
echo                      ���⻹û���
echo.
echo                 ��  ��  ��  ��  ��  ʼ
echo.
echo.
echo.
echo.
echo.
echo.
echo =====================================================================================
pause >nul
cls
goto main

:main
echo =====================================================================================
echo.
echo.
echo.
echo.
echo.
echo.
echo                      ���⻹û���
echo.
echo                      1.��ͷ��ʼ
echo.
echo                      2.��ȡ�浵
echo.
echo                      3.ɾ���浵
echo.
echo                      4.����
echo.
echo                      5.�˳�
echo.
echo.
echo.
echo.
echo.
echo.
echo =====================================================================================
set /p msg=������ѡ��ǰ�����֣�Ȼ��س�ȷ�ϣ�
if %msg% == 1 goto 1
if %msg% == 2 goto read1
if %msg% == 3 goto delete
if %msg% == 4 goto about
if %msg% == 5 exit
goto tty

:tty
set /a t1=%t1% + 1
if %t1%== 1 goto help
if %t1%== 2 goto stop
if %t1%== 3 cls && echo �ðɣ����е���������ġ� && goto kill
goto leave


:help
cls
echo ��ȷ��û�������
pause
cls
goto main

:stop
cls
echo ������������������ʾ�ġ�
pause
cls
goto main

:kill
echo �����κ��������˳�,���������������������롣(sorry)
set /p fk=
if %fk% == sorry echo �ðɣ���֪���������� && ping -n 2 127.0.0.1 >nul && goto mainb
exit

:mainb
set /a t1=0
set fk=0
set msg=6
cls
goto main

:leave
echo ������ķ��ˡ���
echo �����κ��������˳���
pause >nul
exit

:read1
cls
cd saves 
if !errorlevel! == 1 md saves && cd saves
goto read2

:read2
cls
dir /b
set rd=���B�d��Û
set /p rd=��ѡ�������浵֮һ�Զ�ȡ������浵���ֺ�س���,������back���س����������棨back��
if %rd% == back set /a rd=0 && cd .. && goto mainb
if %rd% == ���� set /a rd=0 && cd .. && goto mainb
if %rd% == ���B�d��Û cls && echo ι�����ƺ�ʲôҲû����ͻس��ˣ��ɸ���Ϊ����֮������ && ping -n 4 127.0.0.1 >nul && goto read2
for /f "delims=" %%a in ( %rd% ) do ( 
set /a sv=%%a
)
cd ..
cls
goto %sv%

:1
cls
set /a svs=1
echo ������,û���ˣ�
choice /c 12 /m "ѡ��: 1:�ٿ���;2:�������˵�"
if !errorlevel! == 2 goto mainb
if !errorlevel! == 1 goto 2

:2
set /a svs=2
echo ���û����!
choice /c 123 /m "ѡ��: 1:�ٿ���;2:�������˵�;3:�浵"
if !errorlevel! == 3 goto save
if !errorlevel! == 2 goto mainb
if !errorlevel! == 1 echo ��û�ˡ� && ping -n 4 127.0.0.1 >nul && goto mainb

:about
cls
echo By Universal963
echo �汾��Alpha 0.1
pause
goto mainb

:save
cls
cd saves
if !errorlevel! == 1 md saves && cd saves
cls
set savez=���B�d��Û
set /p savez=���浵ȡ������:
if %savez% == ���B�d��Û cls && echo ι���㻹ûȡ�����أ� && ping -n 4 127.0.0.1 >nul && cd .. && goto save
echo %svs% >%savez%
echo �Ѵ浵��
cd ..
ping -n 2 127.0.0.1 >nul 
cls
goto %svs%

:delete
cls
cd saves
cls
if !errorlevel! == 1 echo û�д浵�ļ��У� && pause && goto mainb
goto delete1

:delete1
cls
dir /b
set rm=���B�d��Û
set /p rm=��ѡ�������浵֮һ��ɾ��������浵���ֺ�س������û���������ʾ�浵�ļ���Ϊ�գ�,������back���س����������棨back��
if %rm% == back set /a rm=0 && cd .. && goto mainb
if %rm% == ���� set /a rm=0 && cd .. && goto mainb
if %rm% == ���B�d��Û cls && echo ι�����ƺ�ʲôҲû����ͻس��ˣ��ɸ���Ϊ����֮������ && ping -n 4 127.0.0.1 >nul && goto delete1
del %rm%
cls
echo ��ɾ��!
choice /c 12 /m "����������Σ�1:����ɾ����2:����������"
if !errorlevel! == 2 set /a rm=0 && cd .. && goto mainb
if !errorlevel! == 1 set /a rm=0 && cls && goto delete1