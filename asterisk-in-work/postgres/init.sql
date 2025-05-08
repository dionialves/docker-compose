-- Tabela para CDR
CREATE TABLE cdr (
    id SERIAL PRIMARY KEY,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    caller_id VARCHAR(20),
    duration INTEGER
);

-- Tabelas para PJSIP (opcional)
CREATE TABLE ps_endpoints (
    id SERIAL PRIMARY KEY,
    transport VARCHAR(40),
    aors VARCHAR(200),
    auth VARCHAR(40),
    context VARCHAR(40)
);

CREATE TABLE ps_auths (
    id SERIAL PRIMARY KEY,
    username VARCHAR(40),
    password VARCHAR(40)
);
