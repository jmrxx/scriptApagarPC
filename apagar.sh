#!/bin/bash
#
# Autor: Jmrx 
# 
# Script que tiene diferentes opciones para apagar el ordenador
# version: 1.0
# date : 2022-10-9
#


# comprovar si el usuario es root
if [ "$EUID" -ne 0 ]; then
  echo "Ejecuta el Script como root"
  exit
fi

# opciones de apagado

while true; do
  echo "Script para apagar "
  echo "---------------------"
  echo "1 Apagar "
  echo "2 Reiniciar "
  echo "3 Apagar por hora "
  echo "4 Apagar con minutos "
  echo "5 Cancelar Sheduler "
  echo "6 Exit "

  read -p "opcion : " option

  # Apagar
  if [ $option -eq 1 ]; then
    echo "Apagandooo"
    sleep 2s
    shutdown now
    break
  fi

  # Reiniciar
  if [ $option -eq 2 ]; then
    echo "Reiniciandooo"
    sleep 2s
    reboot
    break
  fi

  # Apagar con la hora
  if [ $option -eq 3 ]; then
    read -p "Entra la hora f(00:00) : " hora
    shutdown -h $hora 
    break
  fi


  # apagar con minuto
  if [ $option -eq 4 ]; then
    read -p "Entra el minuto : " minuto
      sleep 2s
    shutdown -h $minuto 
    break
  fi

  # cancelar sheduler
  if [ $option -eq 5 ]; then
    echo "cancelandooo sheduler"
      sleep 2s
    shutdown -c
    break
  fi

  # salir del programa
  if [ $option -eq 6 ]; then
    echo "Saliendooo"
    exit 0
    break
  fi

done

exit 0
