<!doctype html>
<html lang="pt-BR">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Perfumaria SQL — README</title>
  <style>
    :root{
      --bg:#ffffff;
      --card:#f7f8fa;
      --text:#111214;
      --muted:#6b7280;
      --accent:#0f172a;
      --border:#e6e9ef;
      --mono: 'Courier New', Courier, monospace;
      --gap:18px;
      font-family: Inter, "Segoe UI", Roboto, Arial, sans-serif;
      color:var(--text);
    }
    html,body{height:100%;margin:0;background:var(--bg);}
    .wrap{max-width:980px;margin:36px auto;padding:28px;border:1px solid var(--border);border-radius:8px;background:linear-gradient(180deg, #fff, var(--card));box-shadow:0 8px 30px rgba(15,23,42,0.06);}
    header{display:flex;flex-direction:column;gap:6px;margin-bottom:18px;}
    h1{margin:0;font-size:24px;letter-spacing:-0.3px;}
    p.lead{margin:0;color:var(--muted);font-size:14px;}
    section{margin-top:var(--gap);}
    h2{font-size:18px;margin:0 0 10px 0;}
    pre{background:#0b1220;color:#e6eef8;padding:14px;border-radius:6px;overflow:auto;font-family:var(--mono);font-size:13px;line-height:1.45}
    code{background:#f3f4f6;padding:2px 6px;border-radius:4px;font-family:var(--mono);font-size:13px;}
    .grid{display:grid;grid-template-columns:1fr 1fr;gap:14px;}
    table{width:100%;border-collapse:collapse;margin-top:8px}
    table th,table td{border:1px solid var(--border);padding:8px;text-align:left;font-size:13px}
    ul{margin:8px 0 0 20px}
    .muted{color:var(--muted);font-size:13px}
    .footer{margin-top:24px;font-size:13px;color:var(--muted)}
    a{color:#0b5fff;text-decoration:none}
    .note{background:#fff8e6;border:1px solid #f2d89e;padding:10px;border-radius:6px;color:#442b00;font-size:13px}
    @media(max-width:720px){.grid{grid-template-columns:1fr}}
  </style>
</head>
<body>
  <main class="wrap" role="main">
    <header>
      <h1>Perfumaria SQL — Sistema de Banco de Dados Relacional</h1>
      <p class="lead">Implementa��o do schema, carga de dados e scripts de DML para o projeto da perfumaria. Vers�o para SQL Server (SSMS).</p>
    </header>

    <section id="description">
      <h2>Descri&ccedil;&atilde;o</h2>
      <p>Este reposit&oacute;rio cont&eacute;m o desenvolvimento completo de um banco de dados relacional para uma perfumaria. O conte&uacute;do abrange modelagem l&oacute;gica, normaliza&ccedil;&atilde;o at&eacute; 3FN, cria&ccedil;&atilde;o do schema em SQL Server, povoamento inicial e exemplos de consultas, atualiza&ccedil;&otilde;es e remo&ccedil;&otilde;es.</p>
    </section>

    <section id="structure">
      <h2>Estrutura do reposit&oacute;rio</h2>
      <pre>
perfumaria-sql
 ├── 01_create_database.sql        -- Cria banco e tabelas
 ├── 02_insert_data.sql            -- Insere dados iniciais
 ├── 03_select_queries.sql         -- Consultas SELECT
 ├── 04_update_commands.sql        -- Comandos UPDATE
 ├── 05_delete_commands.sql        -- Comandos DELETE
 └── README.html                   -- Documenta&ccedil;&atilde;o (este arquivo)
      </pre>
    </section>

    <section id="technologies">
      <h2>Tecnologias</h2>
      <table>
        <thead>
          <tr><th>Tecnologia</th><th>Finalidade</th></tr>
        </thead>
        <tbody>
          <tr><td>SQL Server (SSMS)</td><td>Ambiente de desenvolvimento e execu&ccedil;&atilde;o dos scripts</td></tr>
          <tr><td>SQL (ANSI / T-SQL)</td><td>Cria&ccedil;&atilde;o e manipula&ccedil;&atilde;o de dados</td></tr>
          <tr><td>Git / GitHub</td><td>Versionamento e distribui&ccedil;&atilde;o dos scripts</td></tr>
        </tbody>
      </table>
    </section>

    <section id="usage">
      <h2>Instru&ccedil;&otilde;es de execu&ccedil;&atilde;o</h2>

      <ol>
        <li>Clone o reposit&oacute;rio:
          <pre>git clone https://github.com/SEU_USUARIO/perfumaria-sql.git</pre>
        </li>

        <li>Abra o SQL Server Management Studio (SSMS) e conecte ao servidor.</li>

        <li>Execute os scripts na ordem abaixo (cada arquivo por vez):
          <ul>
            <li><code>01_create_database.sql</code></li>
            <li><code>02_insert_data.sql</code></li>
            <li><code>03_select_queries.sql</code></li>
            <li><code>04_update_commands.sql</code></li>
            <li><code>05_delete_commands.sql</code></li>
          </ul>
        </li>

        <li>Para consultar uma tabela no SSMS, abra uma nova query e execute, por exemplo:
          <pre>SELECT * FROM Cliente;</pre>
        </li>
      </ol>

      <div class="note">
        Observa&ccedil;&atilde;o: Caso receba erro ao executar <code>USE Perfumaria;</code>, execute primeiro o comando de cria&ccedil;&atilde;o do banco (<code>CREATE DATABASE Perfumaria;</code>) e depois faça <code>Refresh</code> na lista de databases no SSMS antes de usar.
      </div>
    </section>

    <section id="sql-samples">
      <h2>Trecho de exemplo: cria&ccedil;&atilde;o do schema (T-SQL)</h2>
      <pre>
-- criar banco e usar
CREATE DATABASE Perfumaria;
GO
USE Perfumaria;
GO

-- tabela Cliente
CREATE TABLE Cliente (
  id_cliente INT IDENTITY(1,1) PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(20),
  email VARCHAR(100)
);
GO

-- tabela Produto
CREATE TABLE Produto (
  id_produto INT IDENTITY(1,1) PRIMARY KEY,
  nome_produto VARCHAR(100) NOT NULL,
  categoria VARCHAR(50),
  preco DECIMAL(10,2) NOT NULL
);
GO
      </pre>
    </section>

    <section id="queries-sample">
      <h2>Consultas de exemplo</h2>
      <pre>
-- Produtos ordenados por preco
SELECT nome_produto, categoria, preco
FROM Produto
ORDER BY preco DESC;

-- Vendas com nome do cliente
SELECT v.id_venda, c.nome AS cliente, v.data_venda
FROM Venda v
JOIN Cliente c ON c.id_cliente = v.id_cliente;
      </pre>
    </section>

    <section id="contributing">
      <h2>Boas pr&aacute;ticas e contribui&ccedil;&otilde;es</h2>
      <ul>
        <li>Organize scripts pequenos, com objetivos claros (cria&ccedil;&atilde;o, inser&ccedil;&atilde;o, consultas, updates, deletes).</li>
        <li>Comente trechos complexos nos scripts.</li>
        <li>Abra <code>Issues</code> para bugs ou melhorias; utilize <code>Pull Requests</code> para propostas de altera&ccedil;&atilde;o.</li>
      </ul>
    </section>

    <section id="license-contact">
      <h2>Licen&ccedil;a e contato</h2>
      <p class="muted">Licen&ccedil;a: MIT (consulte o arquivo LICENSE se presente no reposit&oacute;rio).</p>
      <p>Contato: utilize o sistema de Issues do reposit&oacute;rio no GitHub para solicitar corre&ccedil;&otilde;es, melhorias ou esclarecimentos.</p>
    </section>

    <footer class="footer">
      <div class="muted">Vers&atilde;o do documento: 1.0 — Documenta&ccedil;&atilde;o gerada para entrega acad&ecirc;mica.</div>
    </footer>
  </main>
</body>
</html>
