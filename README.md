# Projeto de Banco de Dados – FastBuy

## Descrição
Este repositório reúne o desenvolvimento de um projeto da disciplina de Banco de Dados, que tem como foco a modelagem de um sistema de comércio eletrônico fictício chamado **FastBuy**.  

A FastBuy é uma plataforma digital de vendas que armazena e organiza informações sobre clientes, fornecedores, produtos, categorias, centros de distribuição, transportadoras, pedidos, cupons de desconto, avaliações e históricos de interação. O projeto busca representar essas informações de maneira estruturada, passando pelas etapas de modelagem conceitual e relacional.  

## Objetivos
- Criar o **Modelo Entidade-Relacionamento (MER)** para representar o sistema.  
- Construir o **Modelo Relacional** a partir do MER.  
- Definir as entidades, atributos e relacionamentos que compõem o sistema.  
- Garantir regras básicas de integridade e consistência dos dados.  

## Escopo do Sistema
O sistema da FastBuy contempla:  
- Cadastro de clientes, com dados pessoais, endereços, contatos e pontos de fidelidade.  
- Informações sobre fornecedores e os produtos que oferecem.  
- Produtos classificados em categorias, com dados de estoque, preço e descrição.  
- Centros de distribuição responsáveis pelo armazenamento e inventário.  
- Carrinho de compras com itens selecionados e cupons de desconto aplicados.  
- Pedidos realizados, contendo status, produtos, entrega e nota fiscal.  
- Transportadoras vinculadas às entregas.  
- Avaliações de produtos feitas pelos clientes.  
- Histórico de navegação, adições ao carrinho e envio de ofertas por e-mail.  

## Estrutura do Repositório
- `ddl_ecommerce/` – Scripts **DDL** _(Data Definition Language)_ para definição do esquema do banco de dados: criação de tabelas, constraints, índices e relacionamentos.

- `sql_queries/` – Scripts **DML** _(Data Manipulation Language)_ com consultas SQL desenvolvidas para responder às 10 questões propostas na Fase 3.

- `scripts_fase4/` – Implementações de **Stored Procedures, Functions, Triggers e Views**, elaboradas para resolver um novo conjunto de 10 questões, com foco em manutenção de integridade, encapsulamento de regras de negócio e automação de operações.

## Entregas
- **Fase 1 – Modelagem Conceitual (MER):**  
  Identificação de entidades, atributos e relacionamentos do domínio de e-commerce.  

- **Fase 2 – Modelo Relacional:**  
  Conversão do MER em modelo relacional, com aplicação de normalização e definição de chaves.  

- **Fase 3 – Consultas SQL (DML):**  
  Desenvolvimento de consultas SQL utilizando **SELECT, JOINs, subqueries, agrupamentos e filtros**, respondendo às 10 questões propostas.  

- **Fase 4 – Objetos de Banco de Dados:**  
  Criação de **Stored Procedures, User-Defined Functions, Triggers e Views**, resolvendo outro conjunto de questões, com ênfase em **integridade referencial, consistência de dados, regras de negócio e automação de processos**.  

---

## Colaboradores

Este projeto foi desenvolvido por estudantes do curso de Ciência da Computação @ UFCG:


<table>
  <tr>
    <td align="center">
      <a href="https://github.com/eduardonsm">
        <img src="https://github.com/eduardonsm.png" width="120px;" alt="Eduardo Nogueira"/>
        <br />
        <sub><b>@Eduardo Nogueira</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/jennifermedeiross">
        <img src="https://github.com/jennifermedeiross.png" width="120px;" alt="Jennifer Medeiros"/>
        <br />
        <sub><b>@Jennifer Medeiros</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/claraugusta">
        <img src="https://github.com/claraugusta.png" width="120px;" alt="Maria Clara Augusta"/>
        <br />
        <sub><b>@Maria Clara Augusta</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/maria-clara-ferreira-freitas">
        <img src="https://github.com/maria-clara-ferreira-freitas.png" width="120px;" alt="Maria Clara Freitas"/>
        <br />
        <sub><b>@Maria Clara Freitas</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/OscarRodrigues-83">
        <img src="https://github.com/OscarRodrigues-83.png" width="120px;" alt="Oscar Rodrigues"/>
        <br />
        <sub><b>@Oscar Rodrigues</b></sub>
      </a>
    </td>
  </tr>
</table>

