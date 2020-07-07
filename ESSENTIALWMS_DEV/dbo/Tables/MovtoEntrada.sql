CREATE TABLE [dbo].[MovtoEntrada] (
    [IdMovtoEntrada]   INT           IDENTITY (1, 1) NOT NULL,
    [CodAlmacen]       VARCHAR (3)   NOT NULL,
    [NroEntrada]       INT           NOT NULL,
    [NroLinea]         SMALLINT      NOT NULL,
    [CodLpn]           VARCHAR (20)  NOT NULL,
    [Cantidad]         INT           NOT NULL,
    [CodProducto]      VARCHAR (30)  NOT NULL,
    [FechaElaboracion] SMALLDATETIME NULL,
    [FechaExpiracion]  SMALLDATETIME NULL,
    [Lote]             VARCHAR (80)  NULL,
    [CodSerie]         VARCHAR (40)  NULL,
    [FechaMovto]       SMALLDATETIME DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_MovtoEntrada] PRIMARY KEY CLUSTERED ([IdMovtoEntrada] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_MovtoEntrada_DocEntrada] FOREIGN KEY ([NroEntrada], [CodAlmacen]) REFERENCES [dbo].[DocumentoEntrada] ([NroEntrada], [CodAlmacen]),
    CONSTRAINT [UC_MovtoEntrada_DocEntrada] UNIQUE NONCLUSTERED ([CodAlmacen] ASC, [NroEntrada] ASC)
);

