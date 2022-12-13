#!/bin/bash

sort $1 > ordenado.txt
TAGS=(Hortalicas Padaria Cereais Lacticinios Bebidas Carnes Guloseimas "Higiene Pessoal" Limpeza Outros)

HORT=(Morango Uva Pera Pessego Banana Abacaxi Abacate Acai Acerola Melancia Amora Tomate Cereja Coco Goiaba Laranja Kiwi Limao Maca Mamao Manga Abobora Alho Amendoim Feijao Alface Batata Brocolis Castanha Cebola Couve Cebolinha Ervilha Milho Mandioca Moranga Pimenta Pimentao Salsa)
PADA=(Pao Baguete Sonho Quindim Pudim Cocada Torta Sanduiche Patel Coxinha Bolo Mortadela Presunto Bisnaguinha Salame) 
CERE=(Arroz Macarrao Sucrilhos Cereais Aveia)
LACT=(Leite Iogurte Sorvete Picole Chantilly Requeijao Cream Creme Manteiga Queijo Ricota)
BEBI=(Refrigerante Energetico Suco Cafe Coca Guarana Fanta Cerveja Vodka Vinho) 
CARN=(Peito Boi Frango Porco Asinha File Carne Coxa Bife) 
GULO=(Biscoito Bolacha Chocolate Barra Bombom Brigadeiro Bala Pirulito Chicletes Cookie)
HIPE=(Sabonete Shampoo Condicionador Desodorante Pasta Escova Fio)
LIMP=(Detergente Sabao Limpa Vassoura Pano Bucha Agua) 

for i in "${TAGS[@]}"; do
    echo "-------------------------------" >> "teste.txt"
    echo -e "           $i\n" >> "teste.txt"
    
    while read j; do
        STR=$(echo "$j" | cut -d " " -f1) #pega a primeira palavra

        if [ "$i" = "Hortalicas" ]; then
            for k in "${HORT[@]}"; do
                if [ "$STR" = "$k" ]; then
                    echo "* $j" >> "teste.txt"
                    echo "/$j/d" >> "aux"
                    break;
                fi
            done
        elif [ "$i" = "Padaria" ]; then
            for k in "${PADA[@]}"; do
                if [ "$STR" = "$k" ]; then
                    echo "* $j" >> "teste.txt"
                    echo "/$j/d" >> "aux"
                    break;
                fi
            done
        elif [ "$i" = "Cereais" ]; then
            for k in "${CERE[@]}"; do
                if [ "$STR" = "$k" ]; then
                    echo "* $j" >> "teste.txt"
                    echo "/$j/d" >> "aux"
                    break;
                fi
            done
        elif [ "$i" = "Lacticinios" ]; then
            for k in "${LACT[@]}"; do
                if [ "$STR" = "$k" ]; then
                    echo "* $j" >> "teste.txt"
                    echo "/$j/d" >> "aux"
                    break;
                fi
            done
        elif [ "$i" = "Bebidas" ]; then
            for k in "${BEBI[@]}"; do
                if [ "$STR" = "$k" ]; then
                    echo "* $j" >> "teste.txt"
                    echo "/$j/d" >> "aux"
                    break;
                fi
            done
        elif [ "$i" = "Carnes" ]; then
            for k in "${CARN[@]}"; do
                if [ "$STR" = "$k" ]; then
                    echo "* $j" >> "teste.txt"
                    echo "/$j/d" >> "aux"
                    break;
                fi
            done
        elif [ "$i" = "Guloseimas" ]; then
            for k in "${GULO[@]}"; do
                if [ "$STR" = "$k" ]; then
                    echo "* $j" >> "teste.txt"
                    echo "/$j/d" >> "aux"
                    break;
                fi
            done
        elif [ "$i" = "Higiene Pessoal" ]; then
            for k in "${HIPE[@]}"; do
                if [ "$STR" = "$k" ]; then
                    echo "* $j" >> "teste.txt"
                    echo "/$j/d" >> "aux"
                    break;
                fi
            done
        elif [ "$i" = "Limpeza" ]; then
            for k in "${LIMP[@]}"; do
                if [ "$STR" = "$k" ]; then
                    echo "* $j" >> "teste.txt"
                    echo "/$j/d" >> "aux"
                    break;
                fi
            done
        fi
    done < "ordenado.txt"
done

echo "p" >> "aux"
sed -n -f aux ordenado.txt > "outros.txt"
cat outros.txt >> teste.txt
set $(date)
cat teste.txt > "lista-$1-$2-$3.txt"

shred aux
shred teste.txt
shred outros.txt
shred ordenado.txt
rm aux
rm teste.txt
rm outros.txt
rm ordenado.txt