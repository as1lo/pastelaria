create database pastelaria;

create table cliente (
	cli_id int primary key auto_increment,
    cli_cpf varchar(50) not null,
    cli_nome varchar(100),
    cli_nome_social varchar(100),
    cli_data_nascimento date,
    cli_contato varchar(20),
    cli_email varchar(50),
    cli_bairro varchar(50),
    cli_cidade varchar(50),
    cli_estado varchar(50)
);

create table forma_pagamento (
	pag_id int primary key auto_increment,
    pag_nome varchar(50)
);

create table sabor (
	sab_id int primary key auto_increment,
    sab_nome varchar(50),
    sab_preco float
);

create table categoria (
	cat_id int primary key auto_increment,
    cat_nome varchar(50),
    cat_preco float
);

create table produto (
	pro_id int primary key auto_increment,
    pro_nome varchar(50),
    pro_tipo varchar(1),
    pro_fk_sabor int,
    pro_fk_tamanho int,
    pro_fk_categoria int,
    pro_preco float,
    foreign key (pro_fk_sabor) references sabor(sab_id),
    foreign key (pro_fk_tamanho) references tamanho(tam_id),
    foreign key (pro_fk_categoria) references categoria(cat_id)
);

create table funcionario (
	fun_id int primary key auto_increment,
    fun_nome varchar(50),
    fun_cpf varchar(20), 
    fun_contato varchar(20),
    fun_bairro varchar(20),
    fun_cidade varchar(20),
    fun_estado varchar(20)
);

create table vendas (
	ven_id int primary key auto_increment,
    ven_situacao varchar(50) not null,
    ven_data_compra date,
    ven_fk_forma_pagamento int,
    ven_total float not null,
    ven_parcelas int,
    ven_fk_cliente int not null,
    ven_fk_funcionario int not null,
	foreign key (ven_fk_forma_pagamento) references forma_pagamento(pag_id),
    foreign key (ven_fk_cliente) references cliente(cli_id),
    foreign key (ven_fk_funcionario) references funcionario(fun_id)

);

create table itens_vendas (
	iven_id int primary key auto_increment,
    iven_fk_vendas int,
    iven_fk_produto int,
    iven_valor float,
    iven_quantidade int,
    iven_total float,
    foreign key (iven_fk_vendas) references vendas(ven_id),
    foreign key (iven_fk_produto) references produto(pro_id)
);

create table recebimento (
	rec_id int primary key auto_increment,
    rec_fk_forma_pagamento int not null,
    rec_fk_vendas int not null,
    rec_data date not null,
    rec_valor float not null,
    foreign key (rec_fk_forma_pagamento) references forma_pagamento(pag_id),
    foreign key (rec_fk_vendas) references cliente(cli_id)

);