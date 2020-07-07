CREATE TABLE [dbo].[MovtoDevolucion] (
    [IdMovtoDevolucion] INT           IDENTITY (1, 1) NOT NULL,
    [CodAlmacen]        VARCHAR (3)   NULL,
    [NroEntrada]        INT           NOT NULL,
    [NroSalida]         INT           NULL,
    [NroLinea]          SMALLINT      NOT NULL,
    [CodLpn]            VARCHAR (20)  NOT NULL,
    [Cantidad]          INT           NOT NULL,
    [CodProducto]       VARCHAR (30)  NULL,
    [FechaElaboracion]  SMALLDATETIME NULL,
    [FechaExpiracion]   SMALLDATETIME NULL,
    [Lote]              VARCHAR (80)  NULL,
    [CodSerie]          VARCHAR (40)  NULL,
    [FechaMovto]        SMALLDATETIME DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_MovtoDevolucion] PRIMARY KEY CLUSTERED ([IdMovtoDevolucion] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_MovtoDevolucion_DocEntrada] FOREIGN KEY ([NroEntrada], [CodAlmacen]) REFERENCES [dbo].[DocumentoEntrada] ([NroEntrada], [CodAlmacen])
);

