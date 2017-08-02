@echo off

setlocal
cd /d %~dp0

rem clearing previous output
rmdir /s /q output
mkdir output

rem 3.5.3
echo running Gitversion 3.5.3
rmdir /s /q ..\.git\gitversion_cache
copy GitVersion.CommandLine.3.5.3\GitVersion.yml.tmp ..\GitVersion.yml >NUL
GitVersion.CommandLine.3.5.3\GitVersion.exe /l output\gitversion3.5.3.log > output\properties3.5.3.json
del /s ..\GitVersion.yml >NUL

rem 3.6.5
echo running Gitversion 3.6.5
rmdir /s /q ..\.git\gitversion_cache
copy GitVersion.CommandLine.3.6.5\GitVersion.yml.tmp ..\GitVersion.yml >NUL
GitVersion.CommandLine.3.6.5\GitVersion.exe /l output\gitversion3.6.5.log > output\properties3.6.5.json
del /s ..\GitVersion.yml >NUL

rem 4.0.0-beta0009
echo running Gitversion 4.0.0-beta0009
rmdir /s /q ..\.git\gitversion_cache
copy GitVersion.CommandLine.4.0.0-beta0009\GitVersion.yml.tmp ..\GitVersion.yml >NUL
GitVersion.CommandLine.4.0.0-beta0009\GitVersion.exe /l output\gitversion4.0.0-beta0009.log > output\properties4.0.0-beta0009.json
del /s ..\GitVersion.yml >NUL

rem 4.0.0-beta0012
echo running Gitversion 4.0.0-beta0012
rmdir /s /q ..\.git\gitversion_cache
copy GitVersion.CommandLine.4.0.0-beta0012\GitVersion.yml.tmp ..\GitVersion.yml >NUL
GitVersion.CommandLine.4.0.0-beta0012\GitVersion.exe /l output\gitversion4.0.0-beta0012.log > output\properties4.0.0-beta0012.json
del /s ..\GitVersion.yml >NUL
