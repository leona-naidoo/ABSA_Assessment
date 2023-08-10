echo off
python --version

REM REM User Test Cases
robot -o User_Out.xml -l User_Log.html -d Results/User ./Tests/User.robot