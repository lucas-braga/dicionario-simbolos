# Dicionário de Símbolos e Crenças Bíblicas

Sistema de referência cruzada de símbolos, entidades e conceitos identificados em séries de estudos sobre simbologia bíblica e profética. **853 entradas · 221 fontes · 68 jornadas temáticas · geo em 466 entradas.**

## Estrutura

```
dicionario_simbolos.html   — viewer interativo (abre no navegador)
jornadas.html              — página dedicada de jornadas temáticas
simbolos.js                — banco de dados com todas as entradas
sobre.html                 — página sobre o projeto
deploy.sh                  — script para atualizar e enviar ao Git
```

## Como visualizar

Abra o `dicionario_simbolos.html` no navegador. Todos os arquivos precisam estar na mesma pasta (`simbolos.js`, `jornadas.html`, `sobre.html`).

```bash
open ~/Documents/dicionario-simbolos/dicionario_simbolos.html
# ou direto nas jornadas:
open ~/Documents/dicionario-simbolos/jornadas.html
```

## Funcionalidades

- **Busca completa** — pesquisa em nomes, aliases, resumos, fatos e interpretações
- **Filtros por categoria** — Divindades, Símbolos, Conceitos Bíblicos, Figuras Históricas, Manifestações Modernas, Cinema, Ordens, Lugares
- **Referências cruzadas bidirecionais** — cada entrada mostra o que referencia e quem a referencia
- **Deep linking** — a URL atualiza com o `#id` da entrada aberta, permitindo compartilhar um link direto para qualquer símbolo
- **Trilha de navegação** — ao navegar pelas referências, um breadcrumb aparece no modal mostrando o caminho percorrido, clicável
- **Jornadas** — 68 trilhas de leitura guiada com progresso persistido; cada jornada tem um conjunto curado de entradas em sequência temática; acessíveis via `jornadas.html` (página dedicada)

## Categorias

| Categoria | Descrição |
|---|---|
| 👤 Figuras & Personagens | Pessoas reais, figuras lendárias e personagens históricos |
| 🔣 Símbolos | Símbolos, marcas e elementos visuais |
| 🔐 Ordens & Movimentos | Ordens secretas, sociedades, movimentos e ideologias |
| 💻 Manifestações Modernas | Empresas, tecnologias e fenômenos contemporâneos |
| 📖 Conceitos Bíblicos | Conceitos, profecias e temas das escrituras |
| 🏛️ Divindade / Mitologia | Entidades, deuses e figuras mitológicas |
| 🗺️ Lugares & Civilizações | Lugares, sítios arqueológicos e civilizações |
| 🎬 Cinema / Mídia | Filmes, animações e produções de mídia |

## Estrutura de uma entrada

```javascript
{
  id: 'id-unico',           // identificador para links cruzados
  name: 'Nome do Símbolo',
  aliases: ['Apelido 1', 'Apelido 2'],
  cat: 'biblico',           // uma das categorias acima
  icon: '🔥',
  source: [1, 2],           // fontes de origem (uso interno)
  summary: 'Descrição curta exibida no card.',
  facts: [                  // fatos históricos / documentados (bloco verde)
    'Fato verificável...',
  ],
  interps: [                // interpretações do apresentador (bloco amarelo)
    'Interpretação ou conclusão...',
  ],
  refs: ['outro-id'],       // links para outras entradas
  scriptures: ['Gn 1:1'],  // referências bíblicas diretas
  // Campos geográficos — invisíveis no UI, usados só para busca e mapa futuro
  pais: ['IT'],             // ISO-3166-1 alpha-2 (ex: 'IT', 'BR', 'DE')
  local: ['Roma'],          // topônimo específico em PT
  coords: [41.9028, 12.4964], // [lat, lng] — ponto primário
}
```

## Jornadas temáticas (68)

| # | ID | Título |
|---|---|---|
| 1 | `hermetismo-88-trail` | O Segredo do 88: Hermetismo, Baphomet e a Magia Profunda |
| 2 | `gotthard` | A saga do Túnel de Gotthard |
| 3 | `cern` | CERN: o portal do abismo |
| 4 | `marduk-jupiter-trail` | Marduk e Júpiter: A Guerra das Elites Pagãs |
| 5 | `sol-saturno-portal-trail` | O Sol de Saturno: Mito, Portal e CERN |
| 6 | `graal-pedra-negra-trail` | O Graal como Pedra Negra: de Wolfram a Otto Rahn |
| 7 | `linhagem` | A linhagem proibida |
| 8 | `deusa` | A deusa de mil nomes |
| 9 | `deus-verde` | O Deus Verde |
| 10 | `babel` | A nova Torre de Babel |
| 11 | `guerra-oculta` | A guerra oculta dos aliados |
| 12 | `codigo-007` | O código 007 |
| 13 | `cainitas-lenda` | A lenda dos Cainitas |
| 14 | `misterio-babilonico` | O Mistério de Babilônia |
| 15 | `asia-secreta` | A guerra oculta do Oriente |
| 16 | `malta` | Os mistérios de Malta |
| 17 | `sacerdotes-serpente` | A raça dos sacerdotes-serpente |
| 18 | `guerra-fria-oculta` | A Guerra Fria por trás da cortina |
| 19 | `feticao-tempo` | O feitiço do tempo |
| 20 | `samhain-mortos` | O Samhain e o culto dos mortos |
| 21 | `nova-babel` | A Nova Babel: da Teosofia à Era de Aquário |
| 22 | `retorno-pagan` | O Retorno do Paganismo |
| 23 | `ocultismo-nazista` | O Ocultismo por Trás da Suástica |
| 24 | `mk-mente` | A Guerra Invisível Contra a Mente |
| 25 | `islam-oculto` | O Islã das Sombras |
| 26 | `eugenismo` | A Ciência dos Eleitos |
| 27 | `cidade-diabo` | A Cidade do Diabo: Turim |
| 28 | `eurasia-oculta` | Eurasia Oculta: O Czar, Dugin e o Quarto Império |
| 29 | `napoleon-oculto` | O Homem Vermelho de Napoleão |
| 30 | `paises-nao-integrados` | O Mapa do Pentágono e a Grande Guerra Final |
| 31 | `choque-civilizacoes` | O Choque de Civilizações |
| 32 | `hollywood-oculto` | A Varinha Mágica de Hollywood |
| 33 | `tolkien-oculto` | Tolkien, The Inklings e a Golden Dawn |
| 34 | `linhagem-do-dragao` | Linhagem do Dragão: dos Ubaid à Ordem de Vlad |
| 35 | `vampirismo-iniciático` | Vampirismo Iniciático: Sangue, Cabeça e Glândula Pineal |
| 36 | `sementes-da-matrix` | Sementes da Matrix: Engenharia Social e o Ocultismo Pop |
| 37 | `surrealismo-elite` | O Surrealismo como Ocultismo de Elite |
| 38 | `nove-ocultos` | Os Nove: do Imperador Ashoka ao Conselho dos Deuses |
| 39 | `sufi-diretoria` | A Diretoria Oculta: Sufismo, Rosacruz e a Tradição Primordial |
| 40 | `deusa-proibida` | A Deusa Proibida: Asherah, o Sagrado Feminino e o Feminismo |
| 41 | `religiao-primordial-trail` | A Religião Primordial: Navajos, Gêmeos e o Paraíso Perdido |
| 42 | `triangulo-poder-global` | O Triângulo do Poder Global |
| 43 | `transhumanismo-silicio` | A Mente da Máquina: Transhumanismo no Vale do Silício |
| 44 | `cartel-bancario` | O Cartel Bancário: dos Rothschilds à Reserva Federal |
| 45 | `imperialismo-britanico` | Do Imperialismo ao Governo Mundial: Rhodes, Ruskin e a Mesa Redonda |
| 46 | `nobreza-negra-trail` | A Nobreza Negra: de Veneza ao Comitê dos 300 |
| 47 | `diluvio-trail` | O Dilúvio Universal: Memória ou Evento Real? |
| 48 | `jung-eneagrama-trail` | Jung, Eneagrama e a Psicologia Oculta |
| 49 | `dante-hermetico-trail` | Dante e o Hermetismo Medieval |
| 50 | `rephaim-gigantes-trail` | Os Refaim: Gigantes, Abismo e o Retorno de Gog |
| 51 | `fisica-abismo-trail` | Física Quântica e o Abismo: da Matéria Escura aos Refaim |
| 52 | `literatura-oculta-trail` | Literatura Ocultista: de Dickens ao Controle de Mentes |
| 53 | `mesmerismo-espiritismo-trail` | Mesmerismo e Espiritismo: da Hipnose ao Portal dos Mortos |
| 54 | `merovingios-trail` | Os Merovíngios: Do Quinotauro ao Priorado de Sião |
| 55 | `catedral-misterios-trail` | A Catedral dos Mistérios: Chartres, o Graal e a Virgem Oculta |
| 56 | `saturno-trail` | Saturno: O Verdadeiro Senhor dos Anéis |
| 57 | `numerologia-sagrada-trail` | Numerologia Sagrada: 911, IXXI e o Projeto Transumano |
| 58 | `dee-enoquiana-trail` | A Linhagem Enoquiana: de John Dee ao JPL da NASA |
| 59 | `inferno-abismo-trail` | O Inferno e o Abismo: do Tártaro ao CERN |
| 60 | `squatter-man-trail` | O Squatter Man: Plasma Cósmico e os Petróglifos Universais |
| 61 | `seres-hibridos-trail` | Seres Híbridos Antes do Dilúvio: dos Nommos ao Homem-Leão |
| 62 | `monarca-trail` | Controle Mental Monarca: MKUltra e os Escravos da Borboleta |
| 63 | `coruja-trail` | A Coruja de MOLOK: do Sacrifício de Crianças ao Bohemian Grove |
| 64 | `esferas-labirinto-trail` | Esferas, Labirintos e a Prisão do Homem Perfeito |
| 65 | `tartaria-trail` | A Tartária: O Império Apagado e a Linhagem do Tártaro |
| 66 | `pi-216-trail` | Pi, 216 e os Portais Numéricos: a Linguagem Secreta da Elite |
| 67 | `renascer-101-trail` | Renascido do Inferno: o Código 101 e a Prisão da Consciência no Cinema |
| 68 | `codigo-216-trail` | O Código 216: Gematria, a Besta e a Matemática do Fim dos Tempos |

## Como transcrever com Whisper

```bash
cd ~/Downloads
whisper "nome-do-arquivo.m4a" --language Portuguese --model small
```

O Whisper gera vários formatos (`.txt`, `.srt`, `.vtt`). Use o `.txt`.

## Prompt de auditoria de facts ausentes

Usar quando quiser revisitar TXTs já processados e verificar se entradas existentes receberam apenas refs quando deveriam ter recebido facts. Anexar os TXTs originais da sessão a auditar:

```
Audit de facts e interps ausentes — os TXTs em anexo já foram processados anteriormente. Releia-os e, para cada entrada existente do DATA que foi referenciada naquela sessão (recebeu refs novas), verifica se o conteúdo dos TXTs trazia um fato novo e específico sobre aquela entrada que não foi adicionado a facts[], ou uma interpretação nova e específica do apresentador que não foi adicionada a interps[]. Adicione o que estiver ausente sem remover nada. Regras:
- não remova nada do que já existe
- facts[] = informação factual verificável; interps[] = interpretações e conclusões específicas do apresentador; não criar refs adicionais neste audit
- focar especialmente em entradas que naquela sessão receberam só refs e nenhum fact ou interp novo
- ao terminar: audit de refs quebradas via Node.js e apresentar simbolos.js
```

## Nota técnica: helper addToFacts / addToInterps

**CRÍTICO:** os helpers `addToFacts` e `addToInterps` usam o regex `[^\\]]*?`, que termina no **primeiro `]` literal** dentro do conteúdo existente. Se qualquer fact ou interp já gravado na entrada contiver `[` seguido de `]` — por exemplo `[...]`, `[por tal poder]`, citações bíblicas como `[Jo 3:16]`, reticências `[…]` — o helper corrompe o array, inserindo o novo conteúdo no meio da string em vez de no final.

**Regra:** antes de chamar `addToFacts` ou `addToInterps` para uma entrada, verificar se o bloco dessa entrada contém `]` dentro de strings. Entradas de risco conhecidas: qualquer entrada com scriptures (citações bíblicas frequentemente usam `[...]`), citações literárias com reticências, ou entries com colchetes explicativos no texto. Nesses casos, **usar Python com substituição literal exata** para localizar o fechamento real do array via `re.search` com `re.DOTALL` e então annexar os novos itens — em vez do helper Node.js.

## Prompt padrão para adicionar TXTs

Cole este prompt sempre que enviar novos TXTs ao Claude:

```
revise, adicione com excelência e inteligência considerando os existentes — os TXTs em anexo. Regras:
- não remova nada do que já existe
- corrija nomes próprios distorcidos pelo Whisper antes de processar
- enriqueça entradas existentes em vez de duplicar
- ao enriquecer entradas existentes: adicionar facts[] sempre que o conteúdo trouxer fato novo e específico sobre aquela entrada, e adicionar interps[] sempre que o apresentador fizer uma interpretação ou conclusão nova e específica sobre aquela entrada — não apenas refs; antes de fechar, revisar todas as entradas que receberam só refs e verificar se havia fact ou interp específico que deveria ter sido adicionado
- summary: nunca alterar por padrão — novos detalhes vão para facts[]; só reescrever o summary se o novo conteúdo mudar fundamentalmente a identidade da entrada (ex: revelar continuidade moderna de uma ordem catalogada como medieval)
- facts[] = informação factual verificável; interps[] = interpretações e conclusões específicas do apresentador
- refs bidirecionais obrigatórias — quando A referencia B, B deve referenciar A
- antes de finalizar qualquer entrada nova: varrer o DATA existente por palavras-chave temáticas relacionadas e adicionar refs bidirecionais para todas as entradas existentes que se conectam diretamente (não apenas as novas entre si)
- scriptures: apenas quando há referência bíblica direta e clara
- campos geográficos (invisíveis no UI, usados só para busca e mapa futuro):
  - figuras históricas reais → pais (ISO-3166 alpha-2) + local (topônimo PT) + coords [lat, lng]
  - lugares → local + pais + coords
  - ordens → pais da fundação + local da sede + coords
  - divindades → somente se houver templo ou local de culto principal específico
  - símbolos abstratos, cinema, conceitos bíblicos sem lugar físico → omitir os três campos
  - regra pais/local: usar o local mais específico e historicamente relevante para a entrada (não o país inteiro quando há cidade clara)
- strings JS: usar aspas simples; acentos (á, é, ã, ô, ç…) são válidos e obrigatórios — NÃO remover; apenas apóstrofo (') deve ser evitado (substituir por Unicode ’ ou reformular a frase)
- ao terminar: audit de refs quebradas via Node.js e apresentar simbolos.js
- ao terminar: avaliar se as novas entradas se encaixam em jornadas existentes (estender ids) ou se formam tema novo suficiente para uma trilha nova (≥ 4 entradas)
```

Se a sessão do Claude estiver fria (contexto zerado), adicione o preâmbulo abaixo antes de qualquer um dos prompts acima:

```
Este projeto usa os arquivos: simbolos.js (DATA + SOURCES), dicionario_simbolos.html (viewer + TRILHAS), jornadas.html (página de jornadas — TRILHAS duplicado aqui, manter em sincronia), sobre.html e deploy.sh. Leia o simbolos.js e o dicionario_simbolos.html antes de começar.
```

## Como fazer deploy

```bash
bash ~/Documents/dicionario-simbolos/deploy.sh "Add: Nome da Sessão — X entradas"
```

Ou manualmente:

```bash
cd ~/Documents/dicionario-simbolos
git add -A
git commit -m "Add: Nome da Sessão — X entradas"
git push
```

## Como criar ou atualizar trilhas (Jornadas)

As jornadas vivem no array `TRILHAS` em **dois arquivos que precisam ser mantidos em sincronia**: `dicionario_simbolos.html` (usado para iniciar trilhas a partir do dicionário) e `jornadas.html` (página dedicada). Ao adicionar ou editar uma trilha, atualize os dois.

**Adicionar trilha nova:**
```javascript
{ id: 'id-unico', titulo: 'Título', desc: 'Descrição curta.', ids: ['entrada-1', 'entrada-2', 'entrada-3'] }
```

**Regra:** todos os ids em `ids` precisam existir em `DATA`. Verificar com o audit Node.js antes do deploy:

```bash
cd ~/Documents/dicionario-simbolos
node -e "
const fs = require('fs');
let code = fs.readFileSync('simbolos.js', 'utf8');
code = code.replace(/^const /mg, 'var ');
eval(code);
const allIds = new Set(DATA.map(e => e.id));
const broken = [];
for (const entry of DATA) {
  for (const ref of (entry.refs || [])) {
    if (!allIds.has(ref)) broken.push({ entry: entry.id, brokenRef: ref });
  }
}
if (broken.length === 0) console.log('OK - sem refs quebradas');
else broken.forEach(b => console.log('QUEBRADA:', b.entry, '->', b.brokenRef));
console.log('Total entradas:', DATA.length);
"
```

## Hospedagem

Os arquivos podem ser servidos por qualquer servidor web estático. Para proteger com senha no Hostgator, incluir o `.htaccess` na mesma pasta e configurar o `.htpasswd` via painel do servidor.
