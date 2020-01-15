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
echo                      标题还没想好
echo.
echo                 按  任  意  键  开  始
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
echo                      标题还没想好
echo.
echo                      1.从头开始
echo.
echo                      2.读取存档
echo.
echo                      3.删除存档
echo.
echo                      4.关于
echo.
echo                      5.退出
echo.
echo.
echo.
echo.
echo.
echo.
echo =====================================================================================
set /p msg=请输入选项前的数字，然后回车确认：
if %msg% == 1 goto 1
if %msg% == 2 goto read1
if %msg% == 3 goto delete
if %msg% == 4 goto about
if %msg% == 5 exit
goto tty
::tty label and its following labels are Easter egg for not inputing anything but pressing Enter 
::or inputing the option not listed above.

:tty
set /a t1=%t1% + 1
if %t1%== 1 goto help
if %t1%== 2 goto stop
if %t1%== 3 cls && echo 好吧，你有点厉害，真的。 && goto kill
goto leave

:help
cls
echo 你确定没有输错吗？
pause
cls
goto main

:stop
cls
echo 不会输吗？括号里有提示的。
pause
cls
goto main

:kill
echo 输入任何内容以退出,除非你真的明白了如何输入。(sorry)
set /p fk=
if %fk% == sorry echo 好吧，我知道你明白了 && ping -n 2 127.0.0.1 >nul && goto mainb
exit

:mainb
set /a t1=0
set fk=0
set msg=6
cls
goto main

:leave
echo 啊我真的服了……
echo 输入任何内容以退出。
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
set rd=珨狟遜羶脹
set /p rd=请选择上述存档之一以读取（输入存档名字后回车）,或输入back并回车返回主界面（back）
if %rd% == back set /a rd=0 && cd .. && goto mainb
if %rd% == 返回 set /a rd=0 && cd .. && goto mainb
if %rd% == 珨狟遜羶脹 cls && echo 喂，你似乎什么也没输入就回车了！巧妇难为无米之炊啊！ && ping -n 4 127.0.0.1 >nul && goto read2
for /f "delims=" %%a in ( %rd% ) do ( 
set /a sv=%%a
)
cd ..
cls
goto %sv%

:1
cls
set /a svs=1
echo 建设中,没有了！
choice /c 12 /m "选择: 1:再看看;2:返回主菜单"
if !errorlevel! == 2 goto mainb
if !errorlevel! == 1 goto 2

:2
set /a svs=2
echo 真的没有了!
choice /c 123 /m "选择: 1:再看看;2:返回主菜单;3:存档"
if !errorlevel! == 3 goto save
if !errorlevel! == 2 goto mainb
if !errorlevel! == 1 echo 真没了。 && ping -n 4 127.0.0.1 >nul && goto mainb

:about
cls
echo By Universal963
echo 版本：Alpha 0.1
pause
goto mainb

:save
cls
cd saves
if !errorlevel! == 1 md saves && cd saves
cls
set savez=珨狟遜羶脹
set /p savez=给存档取个名字:
if %savez% == 珨狟遜羶脹 cls && echo 喂，你还没取名字呢！ && ping -n 4 127.0.0.1 >nul && cd .. && goto save
echo %svs% >%savez%
echo 已存档！
cd ..
ping -n 2 127.0.0.1 >nul 
cls
goto %svs%

:delete
cls
cd saves
cls
if !errorlevel! == 1 echo 没有存档文件夹！ && pause && goto mainb
goto delete1

:delete1
cls
dir /b
set rm=珨狟遜羶脹
set /p rm=请选择上述存档之一以删除（输入存档名字后回车，如果没有内容则表示存档文件夹为空）,或输入back并回车返回主界面（back）
if %rm% == back set /a rm=0 && cd .. && goto mainb
if %rm% == 返回 set /a rm=0 && cd .. && goto mainb
if %rm% == 珨狟遜羶脹 cls && echo 喂，你似乎什么也没输入就回车了！巧妇难为无米之炊啊！ && ping -n 4 127.0.0.1 >nul && goto delete1
del %rm%
cls
echo 已删除!
choice /c 12 /m "现在你想如何？1:继续删除；2:返回主界面"
if !errorlevel! == 2 set /a rm=0 && cd .. && goto mainb
if !errorlevel! == 1 set /a rm=0 && cls && goto delete1
