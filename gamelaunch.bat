for /f "tokens=2 delims==" %%x in ('findstr /I "GameLoc=" param.txt') do set "GameLoc=%%x"
for /f "tokens=2 delims==" %%y in ('findstr /I "WorldsLoc=" param.txt') do set "WorldsLoc=%%y"
echo %GameLoc%
echo %WorldsLoc%
git pull
cd /D %WorldsLoc%
git pull
cd /D %GameLoc%
valheim.exe
sleep 5000
cd /D %WorldsLoc%
git add .
git commit -m "World Update"
git push origin master
cmd