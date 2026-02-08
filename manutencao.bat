@echo off
title Manutencao Automatica do Sistema
color 0A

:: ===== ELEVAR PARA ADMIN =====
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit
)

echo Iniciando manutencao...
timeout /t 2 >nul

:: ===== LIMPEZA DE TEMP =====
echo Limpando arquivos temporarios...
del /s /f /q %temp%\* >nul 2>&1
rd /s /q %temp% >nul 2>&1
md %temp%

del /s /f /q C:\Windows\Temp\* >nul 2>&1

:: ===== LIMPEZA DE CACHE DNS =====
echo Limpando cache de rede...
ipconfig /flushdns >nul

:: ===== VERIFICACAO DE ARQUIVOS DO SISTEMA =====
echo Verificando integridade do Windows...
sfc /scannow

:: ===== REPARO DE IMAGEM DO WINDOWS =====
echo Reparando imagem do sistema...
DISM /Online /Cleanup-Image /RestoreHealth

:: ===== LIMPEZA DE DISCO SILENCIOSA =====
echo Limpando arquivos desnecessarios...
cleanmgr /sagerun:1

:: ===== OTIMIZACAO DE DISCO =====
echo Otimizando disco...
defrag C: /O

:: ===== REDE =====
echo Resetando configuracoes de rede...
netsh int ip reset
netsh winsock reset

:: ===== FINAL =====
echo Manutencao concluida.
timeout /t 5 >nul
exit
