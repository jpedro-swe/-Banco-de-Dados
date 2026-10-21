# Banco de Dados - Atividade 3.0

Um projeto de banco de dados relacional para gerenciar alunos, professores, disciplinas e turmas em um contexto acadêmico.

## Visão Geral

Este repositório contém um script SQL em MySQL que cria o schema `mydb` e as tabelas necessárias para representar o relacionamento entre:

- alunos
- professores
- disciplinas
- turmas

A estrutura foi desenvolvida em MySQL Workbench e pode ser executada diretamente em um servidor MySQL/MariaDB.

## Estrutura do Banco

O banco é composto pelos seguintes objetos:

### 1. `aluno`
Armazena os dados dos estudantes.

Campos:
- `id_aluno` — identificador único do aluno
- `nome_aluno` — nome completo
- `email_aluno` — e-mail institucional ou pessoal
- `telefone_aluno` — telefone de contato
- `sexo_aluno` — enumeração com valores `M` ou `F`

### 2. `professor`
Armazena os dados dos docentes.

Campos:
- `id_professor` — identificador único do professor
- `nome_professor` — nome completo
- `titulacao_professor` — titulação (`Especialista`, `Mestre`, `Doutor`)

### 3. `disciplina`
Armazena as disciplinas ofertadas.

Campos:
- `id_disciplina` — identificador único da disciplina
- `nome_disciplina` — nome da disciplina
- `ch_disciplina` — carga horária em formato de texto (`CHAR(3)`) 

### 4. `turma`
Representa a associação entre disciplina, professor e aluno.

Campos:
- `disciplina_id_disciplina`
- `professor_id_professor`
- `aluno_id_aluno`

Essa tabela funciona como uma tabela de relacionamento muitos-para-muitos entre disciplinas, professores e alunos.

## Relacionamentos

- Um aluno pode participar de várias turmas.
- Um professor pode lecionar várias disciplinas em diferentes turmas.
- Uma disciplina pode ter várias turmas associadas.

As chaves estrangeiras garantem integridade referencial entre as tabelas.

## Script SQL

O script principal está em:

- `atividade3.0.sql`

Ele cria o schema, as tabelas e as constraints necessárias.

## Como usar

### Pré-requisitos

- MySQL 8.x ou MariaDB
- Cliente MySQL (terminal, Workbench ou outra ferramenta)

### Passo a passo

1. Abra o terminal ou o MySQL Workbench.
2. Conecte-se ao seu servidor MySQL.
3. Execute o script SQL:

```bash
mysql -u root -p
```

Depois, dentro do cliente MySQL:

```sql
SOURCE atividade3.0.sql;
```

Ou, se preferir, importe diretamente no Workbench.

## Exemplo de uso

```sql
USE mydb;

SELECT * FROM aluno;
SELECT * FROM professor;
SELECT * FROM disciplina;
SELECT * FROM turma;
```

## Observações

- O banco foi criado com o nome de schema `mydb`.
- O script usa `ENGINE = InnoDB`, garantindo suporte a transações e integridade relacional.
- A estrutura está pronta para expansão, como por exemplo:
  - notas
  - frequências
  - calendário acadêmico
  - curso e período

## Licença

Este projeto foi desenvolvido para fins acadêmicos e de estudo.

## Autor

Este repositório foi criado para a atividade de banco de dados, com foco em modelagem relacional e criação de schema SQL.

---

Se quiser, posso também criar uma versão do README com:

- visual mais profissional
- badges e emojis
- diagramas Mermaid
- instruções de exportação/importação em MariaDB
- um modelo de ER em ASCII/mermaid
