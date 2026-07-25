#!/bin/bash
# deploy.sh — Atualiza o dicionário local e faz commit no Git
# Uso: duplo clique ou ./deploy.sh "mensagem do commit"

REPO="$HOME/Documents/dicionario-simbolos"
OUTPUTS="/Users/lucasbraga/Library/Application Support/Claude/local-agent-mode-sessions/e6f8a0b9-0ad4-4508-916d-5f13c6355d4d/86cc1ccf-2f66-4b5b-9113-31e68c42569e/local_5f23b667-b22b-4e7a-80f9-e2bf004a6f28/outputs"

MSG="${1:-Atualização do dicionário}"

echo "📦 Copiando arquivos..."
cp "$OUTPUTS/simbolos.js" "$REPO/simbolos.js"
cp "$OUTPUTS/dicionario_simbolos.html" "$REPO/dicionario_simbolos.html"
cp "$OUTPUTS/sobre.html" "$REPO/sobre.html"

echo "🔀 Fazendo commit..."
cd "$REPO"
git add simbolos.js dicionario_simbolos.html sobre.html
git commit -m "$MSG"
git push

echo "✅ Pronto! Commit enviado para o GitHub."
