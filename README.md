# Postgres + pgadmin

Este script foi extraido do intensivão Java Spring, realizado pelo professor Nélio Alves do canal do youtube DevSuperirior.
O objetivo de salvar esse script é para ter o mesmo de facil acesso quando precisar. Esse script sobe dois comtainer, um com
o postgres e outro com o pgadmin, utilizarei os mesmos em projetos com spring-boot.

Ajustes apenas uma configuração no script que é relacionado ao user, pois o mesmo estava sem permissão de execução ao subir o container,
ja que estou utilizando WLS.

### Configurações do Servidor

Ao acessar o pgadmin, será necessário configurar para acessar o servidor, segue configurações:

- name: local-docker
- host name/address: pg-docker
- port: 5432
- maintenance database: mydatabase
- username: postgres
- password: 1234567
