echo off



rem ---------------------------------------------------------------------------------------------------------------
rem ---------------------------------------------------------------------------------------------------------------



rem �汾
set banben1=0.14.21
set banben2=0.15.9
set banben1_path=I:\game\Factorio.0.14.21
set banben2_path=I:\game\Factorio.v0.15.9


rem �����ļ���
set save_name=my-save.zip

rem ��ͼ�����ļ�
set map_gen_settings=map-gen-settings.example.json

rem �����������ļ�
set server_settings=server-settings.example.json


goto shezhi1

rem ---------------------------------------------------------------------------------------------------------------
rem ---------------------------------------------------------------------------------------------------------------














:shezhi1

set current=%banben1%
set Factorio_path=%banben1_path%

cls
goto caidan

:shezhi2

set current=%banben2%
set Factorio_path=%banben2_path%
 
cls
goto caidan


:caidan
echo  -------- by PP
echo  --------
echo=

echo ��ǰ�汾��	%current%
echo ��Ϸ·����	%Factorio_path%  
echo �浵���֣� 	%save_name%  
echo �浵λ�ã� 	%Factorio_path%\saves
echo ����λ�ã�	%Factorio_path%\data
echo ��ͼ�������ã�	%map_gen_settings%  
echo ���������ã�	%server_settings%  
echo=
echo  --------
echo  --------
 
echo=

echo ��1�� �л���%banben1%
echo ��2�� �л���%banben2%
echo ��a�� �༭��ͼ���������ļ�
echo ��b�� �༭�����������ļ�
echo ��c�� �����µ�ͼ,���򿪷�����
echo ��d�� ֱ�Ӵ򿪷�����
echo ��e�� ֱ�Ӵ򿪿ͻ���
echo ��f�� ���ļ���

echo=

set /p select=������
if "%select%"=="1" goto shezhi1
if "%select%"=="2" goto shezhi2
if "%select%"=="a" goto bianji
if "%select%"=="b" goto serverSet
if "%select%"=="c" goto create
if "%select%"=="d" goto start
if "%select%"=="e" goto client
if "%select%"=="f" goto open

cls
goto caidan
pause


:open
start %Factorio_path%
cls
goto caidan
pause


:serverSet
call %Factorio_path%\data\%server_settings%  
cls 
goto caidan
pause

:client
start %Factorio_path%\bin\x64\factorio.exe

pause
exit


:bianji
call %Factorio_path%\data\%map_gen_settings% 
cls 
goto caidan
pause

:create 
 
%Factorio_path%\bin\x64\factorio.exe --create %Factorio_path%\saves\%save_name% --map-gen-settings %Factorio_path%\data\%map_gen_settings%
%Factorio_path%\bin\x64\factorio.exe --start-server %Factorio_path%\saves\%save_name%  --server-settings %Factorio_path%\data\%server_settings%

pause 
exit
 

:start 
%Factorio_path%\bin\x64\factorio.exe --start-server %Factorio_path%\saves\%save_name%  --server-settings %Factorio_path%\data\%server_settings%
pause 
exit