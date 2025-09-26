# VSCode 소스 다운로드
Invoke-WebRequest -Uri 'https://aka.ms/vscode-win32-x64-system-stable' -OutFile 'c:\windows\temp\VSCode_x64.exe'

# 3분동안 대기
Start-Sleep -Seconds 180

# VSCode 설치
Start-Process -FilePath 'c:\windows\temp\VSCode_x64.exe' -Args '/verysilent /suppressmsgboxes /mergetasks=!runcode' -Wait -PassThru
