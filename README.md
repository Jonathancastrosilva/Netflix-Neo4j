# Netflix Neo4j
Projeto de exemplo para modelagem de usuários, filmes, séries, diretores, atores e gêneros em um banco de grafos Neo4j.

## Sobre
Este repositório contém um conjunto de dados fictícios com nós e relacionamentos para um projeto em Neo4j. O foco é representar usuários, filmes, séries, diretores, atores e gêneros, além de suas relações.

## Estrutura do repositório
- `imagens/`: imagens do grafo para visualizar a estrutura do projeto.
- `query/`: arquivo `criacao_nos_e_relacoes.cypher` com os comandos Cypher para criar nós e relacionamentos.

## Conteúdo do script Cypher
O arquivo `query/criacao_nos_e_relacoes.cypher` inclui:
- Criação de nós para `User`, `Actor`, `Director` e `Genre`, com o atributo `Genre`, `Movie`, `Series`, ,  e .
- Relacionamentos `IN_GENRE` entre os nós `Movie` e `Series` com o nó `Genre`.
- Relacionamentos `ACTED_IN` entre o nó `Actor` com os nós `Movie` e/ou `Series`.
- Relacionamentos `DIRECTED` entre o nó `Director` com os nós `Movie` e/ou `Series`.
- Relacionamentos `WATCHED` entre o nó `User` com os nós `Movie` e/ou `Series`, com um atributo `rating`.

## Observações
- As imagens em `imagens/` ajudam a entender a modelagem visual do grafo.
- Esta atividade foi feito pelo Neo4j Desktop