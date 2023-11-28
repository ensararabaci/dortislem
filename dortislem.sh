#!/bin/bash

# Kullan�c�dan say�lar� ve i�lemi alma
echo "Birinci say�y� girin: "
read num1

echo "��lemi girin (+, -, *, /): "
read operator

echo "�kinci say�y� girin: "
read num2

# ��lemleri yapma
case $operator in
  "+")
    result=$(echo "$num1 + $num2" | bc)
    ;;
  "-")
    result=$(echo "$num1 - $num2" | bc)
    ;;
  "*")
    result=$(echo "$num1 * $num2" | bc)
    ;;
  "/")
    result=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  *)
    echo "Ge�ersiz i�lem!"
    exit 1
    ;;
esac

# Sonucu ekrana yazd�rma
echo "Sonu�: $result"