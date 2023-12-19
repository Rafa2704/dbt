# Conjunto de Queries e CTEs com dbt

Bem-vindo ao meu repositório! Aqui, você encontrará um conjunto de queries e CTEs criados com o dbt (data build tool), uma ferramenta poderosa para transformação de dados em projetos de análise.

## Sobre o Projeto

O objetivo deste repositório é compartilhar e colaborar em consultas SQL e Common Table Expressions (CTEs) desenvolvidas usando o dbt. O dbt simplifica o processo de transformação de dados, permitindo a criação de pipelines de dados de maneira modular e escalável.

## Estrutura do Repositório

- 📁 **queries**: Contém consultas SQL desenvolvidas para análise e transformação de dados.
- 📁 **models**: Armazena os modelos dbt, incluindo CTEs e lógica de transformação.
- 📄 **dbt_project.yml**: Configurações do projeto dbt.

## Exemplos de Uso

### Consulta Simples

```sql
-- Exemplo de consulta SQL
SELECT
  coluna1,
  coluna2
FROM
  tabela
WHERE
  condição = 'alguma coisa';

-- Exemplo de CTE no dbt
WITH cte_exemplo AS (
  SELECT
    coluna1,
    coluna2
  FROM
    tabela
  WHERE
    condição = 'alguma coisa'
)

SELECT
  *
FROM
  cte_exemplo;


