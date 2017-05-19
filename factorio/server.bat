echo off



rem ---------------------------------------------------------------------------------------------------------------
rem ---------------------------------------------------------------------------------------------------------------



rem 版本
set banben1=0.14.21
set banben2=0.15.9
set banben1_path=I:\game\Factorio.0.14.21
set banben2_path=I:\game\Factorio.v0.15.9


rem 保存文件名
set save_name=my-save.zip

rem 地图设置文件
set map_gen_settings=map-gen-settings.example.json

rem 服务器设置文件
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

echo 当前版本：	%current%
echo 游戏路径：	%Factorio_path%  
echo 存档名字： 	%save_name%  
echo 存档位置： 	%Factorio_path%\saves
echo 设置位置：	%Factorio_path%\data
echo 地图生成设置：	%map_gen_settings%  
echo 服务器设置：	%server_settings%  
echo=
echo  --------
echo  --------
 
echo=

echo 【1】 切换到%banben1%
echo 【2】 切换到%banben2%
echo 【a】 编辑地图生成设置文件
echo 【b】 编辑服务器设置文件
echo 【c】 创建新地图,并打开服务器
echo 【d】 直接打开服务器
echo 【e】 直接打开客户端
echo 【f】 打开文件夹

echo=

set /p select=请输入
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