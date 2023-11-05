-- Criando a tabela Pedido Venda
CREATE TABLE [Pedido_Venda]
(
    [Pedido_VendaId] INTEGER  NOT NULL,
    [ClienteId] INTEGER  NOT NULL,
    [VendedorId] INTEGER  NOT NULL,
    [Situacao_PedidoId] INTEGER  NOT NULL,
    [Forma_PagamentoId] INTEGER  NOT NULL,
    [Data_Pedido] DATETIME  NOT NULL,
    [VLR_Pedido_Venda] FLOAT(15,2)  NOT NULL,
    CONSTRAINT [PK_Pedido_Venda] PRIMARY KEY ([Pedido_VendaId])
    CONSTRAINT [FK_Pedido_Venda_Cliente] FOREIGN KEY ([ClienteId]) REFERENCES Cliente(ClienteId)
    CONSTRAINT [FK_Pedido_Venda_Vendedor] FOREIGN KEY ([VendedorId]) REFERENCES Vendedor(vendedorId)
    CONSTRAINT [FK_Pedido_Venda_Situacao_Pedido_Venda] FOREIGN KEY ([Situacao_PedidoId]) REFERENCES Situacao_Pedido_Venda(Situacao_PedidoId)
    CONSTRAINT [FK_Pedido_Venda_Forma_PagamentoId] FOREIGN KEY ([Forma_PagamentoId]) REFERENCES Forma_Pagamento(Forma_PagamentoId)
);

CREATE UNIQUE INDEX [IPK_Pedido_Venda] ON [Pedido_Venda]([Pedido_VendaId]);

-- Criando a tabela Vendedor
CREATE TABLE [Vendedor]
(
    [VendedorId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [Telefone] NVARCHAR(160)  NOT NULL,
    [Endereco] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Vendedor] PRIMARY KEY ([VendedorId])
);

CREATE UNIQUE INDEX [IPK_Vendedor] ON [Vendedor]([VendedorId]);

-- Criando a tabela Item Pedido Venda
CREATE TABLE [Item_Pedido_Venda]
(
    [Item_Pedido_VendaId] INTEGER  NOT NULL,
    [Pedido_VendaId] INTEGER  NOT NULL,
    [ProdutoId] INTEGER  NOT NULL,
    [Quantidade] INTEGER  NOT NULL,
    CONSTRAINT [PK_Item_Pedido_Venda] PRIMARY KEY ([Item_Pedido_VendaId]) 
    CONSTRAINT [FK_Item_Pedido_Venda_Pedido_Venda] FOREIGN KEY ([Pedido_VendaId]) REFERENCES Pedido_venda(Pedido_VendaId)
    CONSTRAINT [FK_Item_Pedido_Venda_Pedido_Produto] FOREIGN KEY ([ProdutoId]) REFERENCES Produto(ProdutoId)
);

 CREATE UNIQUE INDEX [IPK_Item_Pedido_Venda] ON [Item_Pedido_Venda]([Item_Pedido_VendaId]);
 
-- Criando a tabela Forma de Pagamento
CREATE TABLE [Forma_Pagamento]
(
    [Forma_PagamentoId] INTEGER  NOT NULL,
    [Desc_Forma_Pagamento] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Forma_Pagamento] PRIMARY KEY ([Forma_PagamentoId])  
);

 CREATE UNIQUE INDEX [IPK_Forma_Pagamento] ON [Forma_Pagamento]([Forma_pagamentoId]);
 
-- Criando a Tabela Situacao do Pedido
CREATE TABLE [Situacao_Pedido]
(
    [Situacao_PedidoId] INTEGER  NOT NULL,
    [Status_Pedido] NVARCHAR(160)  NOT NULL,
    [Status_Pagamento] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Situacao_Pedido] PRIMARY KEY ([Situacao_PedidoId])  
);

 CREATE UNIQUE INDEX [IPK_Situacao_Pedido] ON [Situacao_Pedido]([Situacao_PedidoId]);
 
-- Criando a Tabela Cliente
CREATE TABLE [Cliente]
(
    [ClienteId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [Telefone] NVARCHAR(160)  NOT NULL,
    [Endereço] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Cliente] PRIMARY KEY ([ClienteId])  
);

 CREATE UNIQUE INDEX [IPK_Cliente] ON [Cliente]([ClienteId]);

-- Criando a Tabela Fornecedor
CREATE TABLE [Fornecedor]
(
    [FornecedorId] INTEGER  NOT NULL,
    [Nome] NVARCHAR(160)  NOT NULL,
    [Telefone] NVARCHAR(160)  NOT NULL,
    [Endereço] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Fornecedor] PRIMARY KEY ([FornecedorId])  
);

 CREATE UNIQUE INDEX [IPK_Fornecedor] ON [Fornecedor]([FornecedorId]);

-- Criando a tabela Produto
CREATE TABLE [Produto]
(
    [ProdutoId] INTEGER  NOT NULL,
    [Tipo_ProdutoId] INTEGER  NOT NULL,
    [Nome] DATETIME  NOT NULL,
    [VLR_Produto_Compra] FLOAT(15,2)  NOT NULL,
    [VLR_produto_Venda] FLOAT(15,2)  NOT NULL,
    CONSTRAINT [PK_Produto] PRIMARY KEY ([ProdutoId])
    CONSTRAINT [FK_Item_Produto_Tipo_Produto] FOREIGN KEY ([Tipo_ProdutoId]) REFERENCES Tipo_Produto(Tipo_ProdutoId)
);

CREATE UNIQUE INDEX [IPK_Produto] ON [Produto]([ProdutoId]);

-- Criando a tabela Tipo Produto
CREATE TABLE [Tipo_Produto]
(
    [Tipo_ProdutoId] INTEGER  NOT NULL,
    [Desc_Tipo_Produto] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Tipo_Produto] PRIMARY KEY ([Tipo_ProdutoId])  
);

 CREATE UNIQUE INDEX [IPK_Tipo_Produtoo] ON [Tipo_Produto]([Tipo_ProdutoId]);

-- Criando a tabela Cotacao
CREATE TABLE [Cotacao]
(
    [CotacaoId] INTEGER  NOT NULL,
    [ProdutoId] NVARCHAR(160)  NOT NULL,
    [FornecedorId] NVARCHAR(160)  NOT NULL,
    [VLR_Cotacao] FLOAT(15,2)  NOT NULL,
    [Unidade_Medida] NVARCHAR(160)  NOT NULL,
    CONSTRAINT [PK_Cotacao] PRIMARY KEY ([CotacaoId]) 
    CONSTRAINT [FK_Cotacao_Produto] FOREIGN KEY ([ProdutoId]) REFERENCES Produto(ProdutoId)
    CONSTRAINT [FK_Cotacao_Fornecedor] FOREIGN KEY ([FornecedorId]) REFERENCES Fornecedor(FornecedorId)
);

 CREATE UNIQUE INDEX [IPK_Cotacao] ON [Cotacao]([CotacaoId]);

-- Criando a tabela Item Pedido Compra
CREATE TABLE [Item_Pedido_Compra]
(
    [Item_Pedido_CompraId] INTEGER  NOT NULL,
    [Pedido_CompraId] INTEGER  NOT NULL,
    [ProdutoId] INTEGER  NOT NULL,
    [Quant_Item_Pedido_Compra] INTEGER  NOT NULL,
    CONSTRAINT [PK_Item_Pedido_Compra] PRIMARY KEY ([Item_Pedido_CompraId]) 
    CONSTRAINT [FK_Item_pedido_Compra_Pedido_Compra] FOREIGN KEY ([Pedido_CompraId]) REFERENCES Pedido_Compra(Pedido_CompraId)
    CONSTRAINT [FK_Item_pedido_Compra_Produto] FOREIGN KEY ([ProdutoId]) REFERENCES Produto(ProdutoId)
);

 CREATE UNIQUE INDEX [IPK_Item_Pedido_Compra] ON [Item_Pedido_Compra]([Item_Pedido_CompraId]);

-- Criando a tabela Pedido Compra
CREATE TABLE [Pedido_Compra]
(
    [Pedido_CompraId] INTEGER  NOT NULL,
    [FornecedorId] INTEGER  NOT NULL,
    [VLR_Pedido_Compra] FLOAT(15,2)  NOT NULL,
    CONSTRAINT [PK_Pedido_Compra] PRIMARY KEY ([Pedido_CompraId])
    CONSTRAINT [FK_Pedido_Compra_Fornecedor] FOREIGN KEY ([FornecedorId]) REFERENCES FornecedorId(FornecedorId)
);

CREATE UNIQUE INDEX [IPK_Pedido_Compra] ON [Pedido_Compra]([Pedido_CompraId]);
 