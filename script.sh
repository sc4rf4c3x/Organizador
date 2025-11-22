#!/bin/bash

echo "==============================================="
echo " PROJETO 1 - GERENCIADOR DE ARQUIVOS BÁSICO"
echo " Demonstração: Navegação e manipulação inicial"
echo "==============================================="
echo ""

# OBJETIVO:
# Criar, navegar e manipular diretórios e arquivos no Linux,
# usando comandos essenciais de um SysAdmin iniciante.

echo "[1/6] Criando estrutura de diretórios..."
echo "-----------------------------------------------"
mkdir -p projeto1/{docs,imagens,scripts,backup}
echo "OK: Estrutura criada!"
echo ""

echo "[2/6] Navegando entre diretórios..."
echo "-----------------------------------------------"
cd projeto1
echo "Local atual: $(pwd)"

cd docs
echo "Entrou em: $(pwd)"
cd ..
echo "Voltou para: $(pwd)"

cd scripts
echo "Entrou em: $(pwd)"
cd ..
echo "Voltou para: $(pwd)"
echo ""

echo "[3/6] Criando arquivos nas pastas..."
echo "-----------------------------------------------"

echo "- Criando arquivo anotacoes.txt em docs/"
cd docs
touch anotacoes.txt
echo "Linux é foda" >> anotacoes.txt
echo "Criando paixão por linux" >> anotacoes.txt
echo "Irei dominar linux" >> anotacoes.txt
echo "OK: anotacoes.txt criado com conteúdo!"
cd ..

echo "- Criando app.sh em scripts/"
cd scripts
echo "scripts de teste" > app.sh
echo "OK: app.sh criado!"
cd ..

echo "- Criando arquivos simulados em imagens/"
cd imagens
touch foto1.jpg foto2.png
echo "OK: fotos criadas!"
cd ..
echo ""

echo "[4/6] Movendo e copiando arquivos..."
echo "-----------------------------------------------"
mv docs/anotacoes.txt backup
echo "Movido: anotacoes.txt → backup/"

cp scripts/app.sh backup
echo "Copiado: app.sh → backup/"

mv imagens/foto1.jpg docs
echo "Movido: foto1.jpg → docs/"

cp imagens/foto2.png backup
echo "Copiado: foto2.png → backup/"
echo ""

echo "[5/6] Removendo arquivos e diretórios..."
echo "-----------------------------------------------"
rm -rf imagens/foto2.png
echo "Removido: imagens/foto2.png"

rm -rf scripts/app.sh
echo "Removido: scripts/app.sh"

rm -rf imagens
echo "Diretório removido: imagens/"
echo ""

echo "[6/6] Exibindo estrutura final do projeto..."
echo "-----------------------------------------------"
echo "Listagem completa do projeto1:"
ls -lah

echo ""
echo "Conteúdo de docs/"
ls -lah docs

echo ""
echo "Conteúdo de scripts/"
ls -lah scripts

echo ""
echo "Conteúdo de backup/"
ls -lah backup

echo ""
echo "Diretório atual: $(pwd)"

# tree pode falhar caso o usuário não tenha instalado
echo ""
echo "Estrutura hierárquica:"
tree . 2>/dev/null || echo "Instale 'tree' para visualizar a árvore"

echo ""
echo "=== PROJETO FINALIZADO ==="
