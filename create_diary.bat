@echo off
cd C:\Users\MR.MA\maxioul.github.io\bolg\source\_posts
set yyyy=%date:~,4%
set mm=%date:~5,2%
set day=%date:~8,2% 
set filename=%yyyy%-%mm%-%day%
set filename=%filename: =0%
set filename=%filename:~,10%


if exist %filename%.md (
    timeout /t 1 /nobreak
) else (
    hexo new %filename%
)
