AULA SOBRE SELECT

SELECT
-- SQL Server, Postgres, Oracle, MySQL

SELECT coluna1, coluna2 --Seleciona a coluna da tabela --
FROM tabela --seleciona a tabela --

SELECT * -- seleciona todas as coluna * --
FROM tabela --seleciona a tabela --

AULA SOBRE SELECT!
SELECT E FROM É USADA PARA ACHAR NOMES OU QUALQUER COISA DENTRO DO BANCO DE DADOS DE FORMA RÁPIDA 

----------------------------------------------------------------------------------------------------

AULA SOBRE DISTINCT -- o comando remove os duplicados do banco de dados -- 

SELECT DISTINCT coluna1 coluna2 --seleciona a coluna da tabela com o comando distinct--
FROM tabela --escolhe a tabela--

SELECT DISTINCT É UTILIZADO PARA REMOVER OS NOMES OU QUALQUER COISA DENTRO DA TABELA QUE ESTÁ DUPLICADA.

-------------------------------------------------------------------------------------------------------------

AULA SOBRE WHERE 

SELECT coluna1, coluna2 coluna_n
FROM tabela
WHERE condição 

/*


OPERADOR   -    DESCRIÇÃO 
=          -    IGUAL 
>          -    MAIOR QUE 
<          -    MENOR QUE                  TODOS SÃO CONDIÇÕES PARA O WHERE TUDO DEPENDE DO QUE VOCÊ QUER PROCURAR 
<>         -    DIFERENTE DE               NO BANCO DE DADOS.
AND        -    OPERADOR LOGICO E 
OR         -    OPERADOR LOGICO OU 


*/

-------------------------------------------------------------------------------------------------------
AULA SOBRE COUNT 

SELECT COUNT (COLUNA)   --SERVE PARA MOSTRAR A CONTAGEM DAS COLUNAS, CASO QUEIRA A CONTAGEM ESPECIFICA, SÓ ESCREVER
FROM tabela             --O NOME DA COLUNA--


-------------------------------------------------------------------------------------------------------------------

AULA SOBRE TOP

SELECT TOP 10 --NUMERO QUE VOCE QUER QUE RETORNE--
FROM tabela -- O COMANDO TOP ELE VAI RETORNAR OS PRIMEIROS QUE VOCÊ ESCOLHER DE NUMERO DO BANCO DE DADOS


-------------------------------------------------------------------------------------------------------------------

AULA SOBRE ORDER BY

SELECT coluna1 
FROM tabela                  --ORDER BY VOCÊ ORDENA ALGUMA COLUNA EM FICAR EM ORDEM CRESCENTE OU DESCRESCENTE (ACS)
ORDER BY coluna1 asc/desc    --(DESC)


------------------------------------------------------------------------------------------------------------------

AULA SOBRE BETWEEN 

-- O BETWEEN É USADO PRA ENCONTRAR VALOR ENTRE UM VALOR MAXIMO E UM VALOR MINIMO.--

SELECT coluna1
FROM tabela
WHERE onde está o valor between 1000 and 1500;

------------------------------------------------------------------------------------------------------------------

AULA SOBRE IN 

-- USAMOS O COMANDO IN JUNTO COM WHERE, PARA VERIFICAR SE O VALOR CORRESPODEM COM QUALQUER VALOR PASSADO NA LISTA DE VALORES --

VALOR IN (valor1, valor2) -- O IN VAI FAZER UMA BUSCA NO BANCO DE DADOS E RETORNA ESSES VALORES QUE COLOCOU DENTRO 
COLOR IN (red, black)     -- DO (...)


---------------------------------------------------------------------------------------------------------------

AULA SOBRE LIKE 

-- VAMOS DIZER QUE VOCÊ QUER ENCONTRAR UMA PESSOA NO BANCO DE DADOS QUE VOCÊ SABE QUE O NOME DELA ERA FER....ALGUMA COISA--
SELECT *
FROM person.person
WHERE Firstname like 'FER%'

-----------------------------------------------------------------------------------------------------------------

AULA SOBRE MIN, MAX, SUM, AVG 

-- FUNÇÕES DE AGREGAÇÕES BASICAMENTE AGREGAM OU COMBINAM DADOS DE UMA TABELA EM 1 RESULTADO SÓ----------------

SELECT coluna1 SUM (NOME DA COLUNA PRA SOMA TOTAL)
FROM tabela

SELECT coluna1 MIN (NOME DA COLUNA PRA MOSTRAR O VALOR MINIMO)
FROM tabela

SELECT coluna1 MAX (NOME DA COLUNA PRA MOSTRAR O VALOR MAXIMO)
FROM tabela

SELECT coluna1 AVG (NOME DA COLUNA PRA MOSTRAR A MEDIA DO VALOR TOTAL)
FROM tabela

-------------------------------------------------------------------------------------------------------------------

AULA SOBRE GROUP BY 

--O GROUP BY DIVIDE O RESULTADO DA SUA PESQUISA EM GRUPO--
--PARA CADA GRUPO VOCÊ PODE APLICAR UMA FUNÇÃO DE AGREGAÇÃO POR EXEMPLO--
-- CALCULAR SOMA DE ITENS --
-- CONTAR O NUMERO DE ITENS NAQUELE GRUPO --

SELECT coluna1, FunçãoAgregação(coluna2)
FROM tabela
GROUP BY coluna1;

-----------------------------------------------------------------------------------------------------------------

AULA SOBRE HAVING 
-- O  HAVING É MUITO USADO JUNTAMENTE COM O GROUP BY PARA FILTRAR RESULTADOS DE UM AGRUPAMENTO.--
-- DE UMA FORMA SIMPLES EU GOSTO DE ETENDENDER QUE ELE É COMO O COMANDO WHERE PARA DADOS AGRUPADOS.--

SELECT coluna1, FunçãoAgregação(coluna2)
FROM tabela
GROUP BY coluna1
HAVING condição;

-- A GRANDE DIFERENÇA ENTRE HAVING E WHERE.--
-- É QUE O HAVING ELE JÁ FOI APLICADO DEPOIS QUE OS DADOS JA FORAM AGRUPADOS, ENQUANTO O WHERE É APLICADO ANTES DOS DADOS SEREM APLICADOS--

-- VAMOS DIZER QUE QUEREMOS SABER QUAIS NOMES DO SISTEMA TEM UMA OCORRENCIA MAIOR QUE 10 VEZES, FICARIA ASSIM--

SELECT Firstname, COUNT(Firstname) AS "quantidade"
FROM person.person
GROUP BY Firstname
HAVING COUNT(Firstname) > 10

-----------------------------------------------------------------------------------------------------------------
AULA SOBRE AS 

-- O COMANDO AS É PARA APLICAR NOME A QUALQUER COLUNA NO SEU BANCO DE DADOS, ESSE NO CASO IRIA SER APLICADO NO NOME QUANTIDADE. QUE SERIA A QUANTIDADE DE FIRSTNAME > 10. 

SELECT Firstname, COUNT(Firstname) AS "quantidade"
FROM person.person
GROUP BY Firstname
HAVING COUNT(Firstname) > 10

------------------------------------------------------------------------------------------------------------------

SEÇÃO 2 AULA SOBRE - JOIN 


