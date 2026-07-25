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

## Como adicionar uma nova sessão

1. Transcrever o áudio (via Whisper no terminal ou MacWhisper)
2. Enviar a transcrição para o Claude com o pedido de adição
3. Claude atualiza o `simbolos.js` com as novas entradas e o novo source
4. Rodar o deploy:

```bash
~/Documents/dicionario-simbolos/deploy.sh "Add: Nome da Sessão — X entradas"
```

## Hospedagem

Os arquivos podem ser servidos por qualquer servidor web estático. Para proteger com senha no Hostgator, incluir o `.htaccess` na mesma pasta e configurar o `.htpasswd` via painel do servidor.
