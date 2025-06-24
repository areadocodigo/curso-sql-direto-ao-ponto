# 📚 SQL direto ao ponto

Bem-vindo ao repositório oficial do curso **SQL direto ao ponto**! 🎯  
Aqui você encontrará todos os scripts, desafios, materiais complementares e exemplos utilizados durante o treinamento.

## 🚀 Sobre o Curso

O curso **SQL direto ao ponto** foi criado para quem quer aprender a linguagem SQL com exemplos práticos não se limitando ao básico. Aqui você encontrará técnicas que vão além do trivial.

- 📍 **Plataforma:** Kiwify  
- 🎥 **Módulo inicial:** Primeiros passos com a linguagem SQL
- 🎥 **Módulo relacionamentos:** Trabalhando com JOINS (INNER JOIN, LEFT JOIN e RIGHT JOIN)
- 🎥 **Módulo Tipos de dados:** Entendendo os tipos de dados no SQL e como trabalhar com Datas
- 🎥 **Módulo Projeto Final:** Desenvolvimento de uma Aplicação Web com PHP e MySQL

## 🔥 O que você vai aprender

- 🏗️ Criação e modelagem de bancos de dados
- 🗂️ Manipulação de dados (INSERT, UPDATE, DELETE)
- 🔎 Consultas avançadas (Agrupamento, Ordenação, JOINs e Subqueries)
- ⚙️ Views, Procedures, Functions e Triggers
- 🚀 Otimização de consultas e boas práticas
- 🔐 Segurança de dados no SQL

## 💻 Pré-requisitos

- Docker (opcional, se quiser rodar o banco localmente)
- MySQL, PostgreSQL ou outro SGBD de sua preferência
- Query Browser (DBeaver, MySQL Workbench, Beekeeper, etc.)

## 🔗 Links Úteis
- [Live de Docker](https://www.youtube.com/watch?v=5Mce1aVEeE4&list=PL5X822QTM1JZl1TpIBW_QBw5HC19xksS9&index=2&ab_channel=%C3%81readoC%C3%B3digo) (Live de 2 dias de Introdução ao Docker)
- [Curso de PHP grátis](https://www.youtube.com/watch?v=Sr5Qk_qJ6wY&list=PL5X822QTM1JY8_D3G1diTxLZbKoJ-H-K1&ab_channel=%C3%81readoC%C3%B3digo) (Curso de férias de PHP 8 e MySQL)

## 🐳 Rodando um banco MySQL com Docker (Opcional)

```bash
# Levantar o container
docker run --name mysql-dev \
  -e MYSQL_ROOT_PASSWORD=root123 \
  -e MYSQL_DATABASE=lojinha \
  -e MYSQL_USER=paulo \
  -e MYSQL_PASSWORD=123456 \
  -p 3306:3306 \
  -v mysql-data:/var/lib/mysql \
  -d mysql:8.0

# Executar o container
docker exec -it mysql-dev mysql -upaulo -p


