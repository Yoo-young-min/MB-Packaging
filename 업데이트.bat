@echo off
REM ===== 내 프로젝트 폴더로 이동 =====
cd C:\Users\user\Desktop\임시\coding\myfile

REM ===== 로컬 서버 실행 =====
echo 서버를 실행합니다...
start python app.py

REM ===== Git 업데이트 =====
set /p msg=커밋 메시지를 입력하세요: 
git add .
git commit -m "%msg%"
git push origin main

REM ===== 브라우저에서 사이트 열기 =====
start http://127.0.0.1:5000

echo.
echo 완료! Enter 키를 눌러 창을 닫으세요.
pause