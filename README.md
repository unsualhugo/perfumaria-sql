<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
  <title>Perfumaria SQL - README</title>
  <style>
    body{font-family:Arial,Helvetica,sans-serif;background:#ffffff;color:#111;margin:24px;}
    .wrap{max-width:900px;margin:0 auto;}
    h1{font-size:22px;margin:0 0 18px 0;}
    h2{font-size:16px;margin:18px 0 8px 0;cursor:pointer;padding:6px;border-bottom:1px solid #ddd;}
    .section{margin-bottom:12px;}
    .content{padding:6px 8px;display:block;border-left:3px solid #eee;background:#fafafa;}
    pre{background:#222;color:#eee;padding:10px;overflow:auto;font-family:monospace;font-size:13px;}
    .muted{color:#666;font-size:13px;}
  </style>
</head>
<body>
  <div class="wrap">
    <h1>Perfumaria SQL - README</h1>

    <div class="section">
      <h2>Descricao</h2>
      <div class="content">
        <p class="muted">Projeto de banco de dados para uma perfumaria. Inclui schema, carga de dados e scripts DML para SQL Server.</p>
      </div>
    </div>

    <div class="section">
      <h2>Estrutura do repositorio</h2>
      <div class="content">
        <pre>
01_create_database.sql
02_insert_data.sql
03_select_queries.sql
04_update_commands.sql
05_delete_commands.sql
README.html
        </pre>
      </div>
    </div>

    <div class="section">
      <h2>Tecnologias</h2>
      <div class="content">
        <ul>
          <li>SQL Server (SSMS)</li>
          <li>T-SQL / SQL</li>
          <li>Git / GitHub</li>
        </ul>
      </div>
    </div>

    <div class="section">
      <h2>Como executar</h2>
      <div class="content">
        <ol>
          <li>Abrir SSMS e conectar ao servidor.</li>
          <li>Executar 01_create_database.sql.</li>
          <li>Executar 02_insert_data.sql.</li>
          <li>Executar consultas e comandos dos arquivos restantes.</li>
        </ol>
        <p class="muted">Se houver erro no comando USE, executar CREATE DATABASE e dar refresh na lista de databases.</p>
      </div>
    </div>

    <div class="section">
      <h2>Exemplo rapido</h2>
      <div class="content">
        <pre>
-- criar banco e usar
CREATE DATABASE Perfumaria;
GO
USE Perfumaria;
GO

-- consultar tabela cliente
SELECT * FROM Cliente;
        </pre>
      </div>
    </div>

    <div class="section">
      <h2>Contato</h2>
      <div class="content">
        <p class="muted">Abrir issue no repositorio do GitHub para duvidas ou sugestoes.</p>
      </div>
    </div>

  </div>

  <script>
    // tornar h2 clicavel para ocultar/mostrar o conteudo seguinte
    (function(){
      var headers = document.getElementsByTagName('h2');
      for(var i=0;i<headers.length;i++){
        (function(h){
          h.addEventListener('click', function(){
            var next = h.nextElementSibling;
            if(!next) return;
            if(next.style.display === 'none'){
              next.style.display = 'block';
            } else {
              next.style.display = 'none';
            }
          });
        })(headers[i]);
      }
    })();
  </script>
</body>
</html>
