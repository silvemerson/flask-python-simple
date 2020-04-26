## Flask Simples em Python

Esse projeto é o provisionamento em container de um flask simples em Python. O objetivo é simples,
fazer o build da imagem, criar o container e realizadar uma chamada para essa aplicação. 

A aplicação vai ler a váriavel dentro do script .py que será a senha da API. 

Ou seja, ao executarmos uma chamada para essa aplicação devemos passar um Header de Authorization com o token específico(uma váriavel de ambiente com o mesmo nome da var do script, com o valor da senha) 

exemplo: curl -H "Authorization: Token VALOR_DA_PASS" http://localhost/
