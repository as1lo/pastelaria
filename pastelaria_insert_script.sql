insert into cliente (cli_cpf, cli_nome, cli_nome_social, cli_data_nascimento, cli_contato, cli_email, cli_bairro, cli_cidade, cli_estado)
values ('12345678910', 'Eclerisson', 'Lorena', '1990-01-01', '999999999', 'lorena@email.com', 'Cidade Nova', 'Feira de Santana', 'BA');

insert into cliente (cli_cpf, cli_nome, cli_nome_social, cli_data_nascimento, cli_contato, cli_email, cli_bairro, cli_cidade, cli_estado)
values ('98765432110', 'Etevalda', 'Etevalda', '1985-05-15', '888888888', 'etevalda@email.com', 'Cidade Nova', 'Feira de Santana', 'BA');

insert into cliente (cli_cpf, cli_nome, cli_nome_social, cli_data_nascimento, cli_contato, cli_email, cli_bairro, cli_cidade, cli_estado)
values ('33344455566', 'Renato', 'Renato', '1978-10-30', '777777777', 'beltrano@email.com', 'Cidade Nova', 'Feira de Santana', 'BA');

-- ----------------------------

insert into forma_pagamento (pag_nome) 
values ('Cartão de Crédito');

insert into forma_pagamento (pag_nome) 
values ('Cartão de Débito');

insert into forma_pagamento (pag_nome) 
values ('Dinheiro');

insert into forma_pagamento (pag_nome) 
values ('PIX');

-- ----------------------------

insert into sabor (sab_nome, sab_preco) 
values ('Queijo', 5);

insert into sabor (sab_nome, sab_preco) 
values ('Carne', 5);

insert into sabor (sab_nome, sab_preco)
 values ('Frango', 5);
 
insert into sabor (sab_nome, sab_preco)
 values ('Calabresa', 5);
 
insert into sabor (sab_nome, sab_preco) 
values ('Bacon com Queijo', 6);

insert into sabor (sab_nome, sab_preco) 
values ('Frango com Queijo', 6);

-- ----------------------------

insert into categoria (cat_nome, cat_preco)
values ('Normal', 0);

insert into categoria (cat_nome, cat_preco)
values ('Vegano', 5);

insert into categoria (cat_nome, cat_preco)
values ('Vegetariano', 3);

insert into categoria (cat_nome, cat_preco)
values ('Sem Lactose', 2);

-- ----------------------------

insert into tamanho (tam_nome, tam_preco)
values ('P', 2);

insert into tamanho (tam_nome, tam_preco)
values ('M', 4);

insert into tamanho (tam_nome, tam_preco)
values ('G', 6);

-- ----------------------------

insert into funcionario (fun_nome, fun_cpf, fun_contato, fun_bairro, fun_cidade, fun_estado)
values ('Aginomoto', '89990998876', '22222222', 'Campo Limpo', 'Feira de Santana', 'BA');

-- ----------------------------


