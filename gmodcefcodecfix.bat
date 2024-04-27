@echo off
echo.
echo ==============================================================
echo I                                                            I
echo I     GModCEFCodecFix Automated Installation                 I
echo I     Created by InterrobangInterrogated                     I
echo I     https://github.com/InterrobangInterrogated             I
echo I                                                            I
echo I     Find the original fix here:                            I
echo I     https://github.com/solsticegamestudios/GModCEFCodecFix I
echo I                                                            I
echo ==============================================================
echo.
cd %homedrive%%homepath%
set D="%homedrive%%homepath%\GModCEFCodecFix"
if exist %D%\* goto update
echo The GModCEFCodecFix directory does not exist. Cloning the repository.
echo.
git clone https://github.com/solsticegamestudios/GModCEFCodecFix 
cd GModCEFCodecFix
python -m pip install -r requirements.txt
python GModCEFCodecFix.py

:update
echo The GModCEFCodecFix directory has been detected. Updating.
cd GModCEFCodecFix
git pull origin master
python -m pip install -r requirements.txt
python GModCEFCodecFix.py