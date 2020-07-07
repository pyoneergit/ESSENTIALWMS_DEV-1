﻿CREATE TABLE [dbo].[MovtoTransaccional] (
    [IdMovtoTransaccional] BIGINT        IDENTITY (1, 1) NOT NULL,
    [CodTransaccion]       VARCHAR (3)   NOT NULL,
    [NomTransaccion]       VARCHAR (50)  NOT NULL,
    [CodAlmacen]           VARCHAR (3)   NOT NULL,
    [NroDocumento]         VARCHAR (20)  NULL,
    [CodUbicacion]         VARCHAR (50)  NOT NULL,
    [CodLpn]               VARCHAR (20)  NULL,
    [CodProducto]          VARCHAR (30)  NOT NULL,
    [NroLinea]             SMALLINT      NULL,
    [FechaElaboracion]     SMALLDATETIME NULL,
    [FechaExpiracion]      SMALLDATETIME NULL,
    [Lote]                 VARCHAR (40)  NULL,
    [CodSerie]             VARCHAR (80)  NULL,
    [Cantidad]             INT           NOT NULL,
    [CodAlmacen2]          VARCHAR (3)   NULL,
    [NroDocumento2]        VARCHAR (20)  NULL,
    [CodUbicacion2]        VARCHAR (50)  NULL,
    [CodLpn2]              VARCHAR (20)  NULL,
    [Cantidad2]            INT           NULL,
    [Dispositivo]          VARCHAR (30)  NULL,
    [Exportado]            CHAR (1)      DEFAULT ('N') NOT NULL,
    [FechaHoraInicioTrx]   DATETIME      NOT NULL,
    [FechaHoraFinalTrx]    DATETIME      NOT NULL,
    [CodUsuario]           VARCHAR (20)  NOT NULL,
    CONSTRAINT [PK_MovtoTransaccional] PRIMARY KEY CLUSTERED ([IdMovtoTransaccional] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_MovtoTransaccional_Almacen] FOREIGN KEY ([CodAlmacen]) REFERENCES [dbo].[Almacen] ([CodAlmacen]),
    CONSTRAINT [FK_MovtoTransaccional_Transaccion] FOREIGN KEY ([CodTransaccion]) REFERENCES [dbo].[SisTransaccion] ([CodTransaccion]),
    CONSTRAINT [FK_MovtoTransaccional_Ubicacion] FOREIGN KEY ([CodUbicacion], [CodAlmacen]) REFERENCES [dbo].[UbicacionFisica] ([CodUbicacion], [CodAlmacen]),
    CONSTRAINT [FK_MovtoTransaccional_Usuario] FOREIGN KEY ([CodAlmacen], [CodUsuario]) REFERENCES [dbo].[Usuario] ([CodAlmacen], [CodUsuario]),
    CONSTRAINT [UC_MovtotTransaccional] UNIQUE NONCLUSTERED ([CodAlmacen] ASC, [CodTransaccion] ASC, [CodUbicacion] ASC, [CodProducto] ASC, [CodUsuario] ASC)
);

