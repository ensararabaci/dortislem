#!/bin/bash

# Kullanýcýdan sayýlarý ve iþlemi alma
echo "Birinci sayýyý girin: "
read num1

echo "Ýþlemi girin (+, -, *, /): "
read operator

echo "Ýkinci sayýyý girin: "
read num2

# Ýþlemleri yapma
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
    echo "Geçersiz iþlem!"
    exit 1
    ;;
esac

# Sonucu ekrana yazdýrma
echo "Sonuç: $result"