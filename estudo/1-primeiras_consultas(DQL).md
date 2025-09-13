

### Consultas com `SELECT` e `FROM`

Essa é a forma mais básica de extrair dados. O `SELECT` e o `FROM` trabalham em conjunto para responder à pergunta: "Quais colunas eu quero ver e de qual tabela?"

* **`SELECT * FROM tabela;`**
    O asterisco (`*`) é um coringa que significa "todas as colunas". Ele é útil para explorar uma tabela e entender quais dados ela contém. É como pedir para ver tudo o que a tabela tem.

* **`SELECT coluna1, coluna2 FROM tabela;`**
    Aqui, você especifica exatamente as colunas que precisa. Isso é uma prática recomendada para evitar o processamento de dados desnecessários, especialmente em tabelas muito grandes. Você está dizendo ao banco de dados: "Eu só preciso destas colunas, por favor, me mostre-as".

---

### Consultas com `WHERE`

A cláusula `WHERE` é usada para filtrar linhas. Ela permite que você defina uma condição para que apenas os registros que a atendem sejam retornados. O `WHERE` é o seu "filtro".

* **`SELECT * FROM tabela WHERE condicao;`**
    A condição pode ser uma comparação (`=`, `> `, `<`), uma verificação de *string* (`LIKE`), ou qualquer outra lógica que resulte em verdadeiro ou falso para cada linha. Por exemplo, `WHERE QtdePontos > 100` irá retornar apenas as linhas (clientes) que têm mais de 100 pontos.

---

### Consultas com `CASE WHEN`

O `CASE WHEN` é uma expressão poderosa para criar lógica condicional dentro da sua consulta. Ela age como uma estrutura "se-então-senão", permitindo que você categorize dados ou exiba valores diferentes com base em certas condições.

* **`SELECT coluna1, (CASE WHEN condicao THEN valor1 ELSE valor2 END) AS nova_coluna FROM tabela;`**
    Essa expressão avalia uma ou mais condições. Quando uma condição é verdadeira (`THEN`), ela retorna um valor. Se nenhuma das condições for verdadeira, ela usa o valor definido em `ELSE`. O `AS` é usado para dar um nome claro à nova coluna que você está criando na sua consulta. É uma forma de enriquecer seu resultado sem alterar a tabela original.

