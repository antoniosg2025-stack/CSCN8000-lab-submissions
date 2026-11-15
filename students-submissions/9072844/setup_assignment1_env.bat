@echo off
cd /d "%~dp0"
set LOG=setup_assignment1_log.txt
set NB=Juan_Antonio_Sainz_Galvez_Assignment_1.ipynb
echo === Assignment 1 setup started %date% %time% === > %LOG%
set PY=
where py >nul 2>&1 && set PY=py -3
if "%PY%"=="" (where python >nul 2>&1 && set PY=python)
if "%PY%"=="" (echo ERROR: Python not found >> %LOG% & exit /b 1)
echo Using: %PY% >> %LOG%
echo [1/5] Creating .venv ...
if not exist .venv %PY% -m venv .venv >> %LOG% 2>&1
call .venv\Scripts\activate.bat
echo [2/5] Installing libraries ...
python -m pip install --upgrade pip >> %LOG% 2>&1
python -m pip install -r requirements_assignment1.txt >> %LOG% 2>&1
echo [3/5] Registering Jupyter kernel ...
python -m ipykernel install --user --name cscn8000-assignment1 --display-name "Python (.venv CSCN8000 Assignment1 Parkinsons)" >> %LOG% 2>&1
echo [4/5] Downloading data and running the notebook ...
echo --- Run notebook --- >> %LOG%
jupyter nbconvert --to notebook --execute --inplace %NB% >> %LOG% 2>&1
echo [5/5] Exporting HTML ...
jupyter nbconvert --to html %NB% >> %LOG% 2>&1
echo === SETUP DONE %date% %time% === >> %LOG%
echo Done. See %LOG%
