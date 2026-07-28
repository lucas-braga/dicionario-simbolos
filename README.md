# Dicionário de Símbolos e Crenças Bíblicas

Sistema de referência cruzada de símbolos, entidades e conceitos bíblicos identificados em séries de estudos sobre simbologia e profecia.

## Estrutura

```
dicionario_simbolos.html   — viewer interativo (abre no navegador)
simbolos.js                — banco de dados com todas as entradas
deploy.sh                  — script para atualizar e enviar ao Git
```

## Como visualizar

Abra o `dicionario_simbolos.html` no navegador. Os dois arquivos precisam estar na mesma pasta.

```bash
open ~/Documents/dicionario-simbolos/dicionario_simbolos.html
```

## Funcionalidades

- **Busca completa** — pesquisa em nomes, aliases, resumos, fatos e interpretações
- **Filtros por categoria** — Divindades, Símbolos, Conceitos Bíblicos, Figuras Históricas, Manifestações Modernas, Cinema
- **Referências cruzadas bidirecionais** — cada entrada mostra o que referencia e quem a referencia
- **Deep linking** — a URL atualiza com o `#id` da entrada aberta, permitindo compartilhar um link direto para qualquer símbolo
- **Trilha de navegação** — ao navegar de entrada em entrada pelas referências, um breadcrumb aparece no modal mostrando o caminho percorrido, clicável
- **Jornadas** — trilhas de leitura guiada com progresso persistido (localStorage); cada jornada tem um conjunto curado de entradas em sequência temática

## Categorias

| Categoria | Descrição |
|---|---|
| 🏛️ Divindade / Mitologia | Entidades, deuses e figuras mitológicas |
| 🔣 Símbolo | Símbolos, marcas e elementos visuais |
| 💻 Manifestação Moderna | Empresas, tecnologias e fenômenos contemporâneos |
| 📖 Conceito Bíblico / Espiritual | Conceitos, profecias e temas das escrituras |
| 👤 Figura Histórica | Pessoas e personagens históricos |
| 🎬 Cinema / Mídia | Filmes, animações e produções de mídia |

## Estrutura de uma entrada

```javascript
{
  id: 'id-unico',           // identificador para links cruzados
  name: 'Nome do Símbolo',
  aliases: ['Apelido 1', 'Apelido 2'],
  cat: 'biblico',           // uma das categorias acima
  icon: '🔥',
  source: 1,                // qual sessão originou a entrada (uso interno)
  summary: 'Descrição curta exibida no card.',
  facts: [                  // fatos históricos / documentados (bloco verde)
    'Fato verificável...',
  ],
  interps: [                // interpretações do apresentador (bloco amarelo)
    '"Citação direta ou paráfrase..."',
  ],
  refs: ['outro-id'],       // links para outras entradas
  scriptures: ['Gn 1:1'],  // referências bíblicas
}
```

## Fontes (uso interno)

| # | Data | Tema |
|---|---|---|
| 1 | 08/07/2026 | O Greenman, Pai das Abominações |
| 2 | 15/07/2026 | A Segunda Besta do Apocalipse |
| 3 | 22/07/2026 | Deus Destruirá o Sistema |
| 4 | 25/07/2026 | Rango Cap 01 — Livro de Eli e Mad Max no Deserto |
| 5 | 25/07/2026 | Golden Dawn — A Ordem Hermética da Golden Dawn |
| 6 | 25/07/2026 | Graal — O Santo Graal e a Lenda Arturiana |

## Como transcrever com Whisper

Abra o terminal e rode o comando abaixo, substituindo o nome do arquivo:

```bash
cd ~/Downloads
whisper "nome-do-arquivo.m4a" --language Portuguese --model small
```

O `cd ~/Downloads` garante que o `.txt` gerado fique na mesma pasta do áudio. Sem isso, o arquivo vai para a pasta onde o terminal estiver aberto.

Se o arquivo estiver em outro lugar, navegue até lá primeiro:

```bash
cd ~/Desktop
whisper "nome-do-arquivo.m4a" --language Portuguese --model small
```

O Whisper gera vários formatos (`.txt`, `.srt`, `.vtt`). Use o `.txt`.

## Prompt padrão para adicionar TXTs

Cole este prompt sempre que enviar novos TXTs ao Claude:

```
revise, adicione com excelência e inteligência considerando os existentes — os TXTs em anexo. Regras:
- não remova nada do que já existe
- corrija nomes próprios distorcidos pelo Whisper antes de processar
- enriqueça entradas existentes em vez de duplicar
- facts[] = informação factual verificável; interps[] = interpretações e conclusões específicas do apresentador
- refs bidirecionais obrigatórias — quando A referencia B, B deve referenciar A
- scriptures: apenas quando há referência bíblica direta e clara
- ao terminar: audit de refs quebradas via Node.js e apresentar simbolos.js
- ao terminar: avaliar se as novas entradas se encaixam em jornadas existentes (estender ids) ou se formam tema novo suficiente para uma trilha nova (≥ 4 entradas)
```

Se a sessão do Claude estiver fria (contexto zerado), adicione esta linha antes:

```
Este projeto usa dois arquivos: simbolos.js (DATA + SOURCES) e dicionario_simbolos.html. Leia o simbolos.js atual antes de começar.
```

## Como adicionar uma nova sessão

1. Transcrever com Whisper (ver seção acima)
2. Enviar o `.txt` para o Claude com o prompt padrão acima
3. Claude atualiza o `simbolos.js` com as novas entradas e o novo source
4. Rodar o deploy:

```bash
~/Documents/dicionario-simbolos/deploy.sh "Add: Nome da Sessão — X entradas"
```

Ou, manualmente:

```bash
cd ~/Documents/dicionario-simbolos
git add -A
git commit -m "Add: Nome da Sessão — X entradas"
git push
```

## Como criar ou atualizar trilhas (Jornadas)

As jornadas vivem no array `TRILHAS` dentro do `dicionario_simbolos.html`. Nenhuma alteração em `simbolos.js` é necessária.

**Adicionar trilha nova** — inserir um objeto no array:

```javascript
{ id: 'id-unico', titulo: 'Título da trilha', desc: 'Descrição curta.', ids: ['entrada-1', 'entrada-2', 'entrada-3'] }
```

**Atualizar trilha existente** — editar o array `ids` (adicionar, reordenar ou remover entradas) ou o campo `desc`.

**Validação** — todos os ids em `ids` precisam existir em `DATA`. Verificar com o mesmo audit Node.js padrão antes do deploy.

**Workflow sugerido após cada batch:**
1. Processar TXTs → audit de refs (fluxo normal)
2. Verificar se as novas entradas se encaixam em alguma jornada existente → estender o `ids`
3. Se houver tema novo suficientemente rico (≥ 4 entradas) → criar jornada nova
4. Deploy

## Hospedagem

Os arquivos podem ser servidos por qualquer servidor web estático. Para proteger com senha no Hostgator, incluir o `.htaccess` na mesma pasta e configurar o `.htpasswd` via painel do servidor.
