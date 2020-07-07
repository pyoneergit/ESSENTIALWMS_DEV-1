CREATE TABLE [dbo].[Lpn] (
    [CodLpn]          VARCHAR (20)   NOT NULL,
    [CodAlmacen]      VARCHAR (3)    NOT NULL,
    [CodEstado]       CHAR (1)       NOT NULL,
    [FechaCreacion]   SMALLDATETIME  NOT NULL,
    [CodUserCreador]  VARCHAR (20)   NOT NULL,
    [CodUbicacion]    VARCHAR (50)   NOT NULL,
    [TaraLpn]         NUMERIC (9, 3) NULL,
    [EsIngresoManual] BIT            NOT NULL,
    [FecAlmacenaje]   DATETIME       NULL,
    [NroDocEntrada]   VARCHAR (20)   NULL,
    [CodProveedor]    VARCHAR (20)   NULL,
    CONSTRAINT [PK_Lpn] PRIMARY KEY CLUSTERED ([CodAlmacen] ASC, [CodLpn] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_Lpn_Ubicacion] FOREIGN KEY ([CodUbicacion], [CodAlmacen]) REFERENCES [dbo].[UbicacionFisica] ([CodUbicacion], [CodAlmacen]),
    CONSTRAINT [UC_Lpn_Ubicacion] UNIQUE NONCLUSTERED ([CodAlmacen] ASC, [CodUbicacion] ASC)
);

