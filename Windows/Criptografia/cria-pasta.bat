@echo off

mkdir PastaParaCriptografar
cd PastaParaCriptografar

echo "teste" >> arquivo1.txt
echo "mais um teste" >> arquivo2.txt

cd ..

:: cipher sozinho mostra os itens da pasta atual e se eles estão ou não criptografados
cipher >> status.txt
