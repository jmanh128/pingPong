cd %~dp0
cd ..
IF NOT EXIST "venv\" (
    echo "creating venv"
    python -m venv venv
)

mkdir .private
xcopy /s "scripts\.config.json" ".private\config.json"

echo "Updating venv packages"
"venv\Scripts\pip.exe" install -r requirements.txt

echo "Ready to use"