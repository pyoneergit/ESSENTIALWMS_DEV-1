CREATE TABLE [dbo].[MovtoTraspasoAlmacen] (
    [IdTraspasoAlmacen] INT           IDENTITY (1, 1) NOT NULL,
    [CodAlmacen]        VARCHAR (3)   NOT NULL,
    [CodTransporte]     VARCHAR (15)  NULL,
    [NroSalida]         INT           NULL,
    [NroGuiaDespacho]   INT           NULL,
    [NroDocEntrada]     INT           NULL,
    [CodAlmacenDestino] VARCHAR (3)   NULL,
    [CodLpn]            VARCHAR (20)  NOT NULL,
    [CodUsuario]        VARCHAR (20)  NOT NULL,
    [CodProducto]       VARCHAR (30)  NULL,
    [Lote]              VARCHAR (20)  NULL,
    [Cantidad]          INT           NULL,
    [CodUbicacion]      VARCHAR (50)  NULL,
    [FueRecibido]       BIT           NOT NULL,
    [FechaElaboracion]  DATETIME      NULL,
    [FechaMovto]        SMALLDATETIME DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_MovtoTraspasoAlmacen] PRIMARY KEY CLUSTERED ([IdTraspasoAlmacen] ASC) WITH (FILLFACTOR = 90)
);

