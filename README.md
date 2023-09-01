
# ANÁLISE DOS BENEFÍCIOS CONCEDIDOS DO INSS (2019-2021)

Um projeto da cadeira de Sistema de Apoio a Decisão



## Requisitos para utilização

[![Metabase]()](https://www.metabase.com/) <br/>
[![PostgreSql]()](https://www.postgresql.org/) <br/>
[![Pentaho]()](https://marketplace.hitachivantara.com/pentaho/) <br/>
[![Dados do INSS]()](https://dados.gov.br/dados/conjuntos-dados/inss-beneficios-concedidos1) <br/>


## Configuração

Logo após a intalação dos programas acima crie uma banco de dados com o nome `sad-v3`, crie as tabelas utilizando os arquivos da pasta sql e por ultimo utilize o pentaho e as transformações para popular o banco de dados.

Para executar o metabase corretamente coloque o arquivo jar baixado na pasta metabase, abra o terminal na pasta e execute `java -jar metabase.jar`, o email e senha de usuário são `visitante@metabase.com` e `metabase123`.
    
## Autor

- [@DouglasCostaBezerra](https://github.com/selfDoga1)

