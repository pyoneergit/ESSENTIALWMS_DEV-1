CREATE TABLE [dbo].[DetalleLpn] (
    [CodLpn]           VARCHAR (20)  NOT NULL,
    [CodAlmacen]       VARCHAR (3)   NOT NULL,
    [NroDocEntrada]    VARCHAR (20)  NULL,
    [CodProducto]      VARCHAR (30)  NOT NULL,
    [FechaElaboracion] SMALLDATETIME DEFAULT ('01/01/1900') NOT NULL,
    [FechaExpiracion]  SMALLDATETIME DEFAULT ('01/01/1900') NOT NULL,
    [FechaIngreso]     SMALLDATETIME DEFAULT (getdate()) NOT NULL,
    [Lote]             VARCHAR (80)  DEFAULT ('') NOT NULL,
    [CodSerie]         VARCHAR (40)  DEFAULT ('') NOT NULL,
    [Cantidad]         SMALLINT      DEFAULT ((0)) NOT NULL,
    [CodEstado]        CHAR (1)      DEFAULT ('D') NOT NULL,
    [FecAlmacenaje]    DATETIME      NULL,
    CONSTRAINT [PK_DetalleLpn] PRIMARY KEY CLUSTERED ([CodAlmacen] ASC, [CodLpn] ASC, [CodProducto] ASC, [Lote] ASC, [CodSerie] ASC, [FechaElaboracion] ASC, [FechaExpiracion] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_DetalleLpn_Lpn] FOREIGN KEY ([CodAlmacen], [CodLpn]) REFERENCES [dbo].[Lpn] ([CodAlmacen], [CodLpn])
);

