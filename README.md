## Flask Simples em Python

Esse projeto é o provisionamento em container de um flask simples em Python. O objetivo é simples,
fazer o build da imagem, criar o container e realizadar uma chamada para essa aplicação. 

A aplicação vai ler a váriavel MY_PASS dentro do script .py que será a senha da API. 

Ao executarmos uma chamada para essa aplicação devemos passar um Header de Authorization com o token específico(uma váriavel de ambiente com o mesmo nome da var do script, com o valor da senha) 

exemplo: curl -H "Authorization: Token VALOR_DA_PASS" http://localhost/

Criando container:
 
docker run --name flask-app-py -d -p 80:80 -e MY_PASS=$MY_PASS silvemerson/flask-python-simple:latest
