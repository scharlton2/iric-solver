@echo off

rem オリジナルソルバー関連ファイル名等
set solver_name=\mysolver
set go_file=.\go.bat
set exe_file=.\x64\release\iric-solver.exe
set def_file=.\definition.xml

rem iRICインストールフォルダ関連パス設定
set iric_dir=C:\Users\riverlink\iRIC
set private_dir=\private
set solver_dir=\solvers
set src_dir=\src

rem フォルダがなければ作成する
echo %iric_dir%
If not exist %iric_dir% goto error

rem フォルダがなければ作成する
set buf=%iric_dir%%private_dir%
echo %buf%
If not exist %buf% mkdir %buf%

rem フォルダがなければ作成する
set buf=%buf%%solver_dir%
echo %buf%
If not exist %buf% mkdir %buf%

rem フォルダがなければ作成する
set buf=%buf%%solver_name%
echo %buf%
If not exist %buf% mkdir %buf%


rem iRIC用プログラムのコピー
copy /y %go_file% %buf%
copy /y %def_file% %buf%
copy /y %exe_file% %buf%

rem フォルダがなければ作成する
set buf=%buf%%src_dir%
echo %buf%
If not exist %buf% mkdir %buf%

rem ソースコードのコピー
copy /y .\*.f90 %buf%

goto :EOF


:error
echo Error
