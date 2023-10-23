@echo off
set dir=%cd%
for /r %dir% %%i in (.) do (
    @echo off
    cd "%%i"
    IF EXIST pubspec.yaml (
        echo %%i
        flutter clean
    )
    cd ..
)