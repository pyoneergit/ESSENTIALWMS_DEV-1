CREATE TABLE [dbo].[MovtoSalida] (
    [IdMovtoSalida]    INT           IDENTITY (1, 1) NOT NULL,
    [CodAlmacen]       VARCHAR (3)   NULL,
    [NroSalida]        INT           NULL,
    [NroLinea]         SMALLINT      NULL,
    [CodLpn]           VARCHAR (20)  NOT NULL,
    [Cantidad]         INT           NOT NULL,
    [CodProducto]      VARCHAR (30)  NULL,
    [Lote]             VARCHAR (20)  NULL,
    [FechaElaboracion] DATETIME      NULL,
    [FechaMovto]       SMALLDATETIME DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_MovtoSalida] PRIMARY KEY CLUSTERED ([IdMovtoSalida] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_MovtoSalida_DocSalida] FOREIGN KEY ([NroSalida], [CodAlmacen]) REFERENCES [dbo].[DocumentoSalida] ([NroSalida], [CodAlmacen])
);

