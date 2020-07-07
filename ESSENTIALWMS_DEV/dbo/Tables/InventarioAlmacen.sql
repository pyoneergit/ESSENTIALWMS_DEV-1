CREATE TABLE [dbo].[InventarioAlmacen] (
    [CodAlmacen]           VARCHAR (3)   NOT NULL,
    [CodUbicacion]         VARCHAR (50)  NOT NULL,
    [CodProducto]          VARCHAR (30)  NOT NULL,
    [Lote]                 VARCHAR (80)  NULL,
    [CodSerie]             VARCHAR (40)  NULL,
    [FechaElaboracion]     SMALLDATETIME NULL,
    [FechaExpiracion]      SMALLDATETIME NULL,
    [FechaIngreso]         SMALLDATETIME NULL,
    [CantidadDisponible]   SMALLINT      DEFAULT ((0)) NOT NULL,
    [CantidadNoDisponible] SMALLINT      DEFAULT ((0)) NOT NULL,
    [CodEstado]            CHAR (1)      DEFAULT ('D') NOT NULL,
    [TipoInventario]       VARCHAR (30)  DEFAULT ('STOCK') NOT NULL,
    [CodTipoBloqueo]       INT           NULL,
    CONSTRAINT [PK_InventarioAlmacen] PRIMARY KEY CLUSTERED ([CodAlmacen] ASC, [CodUbicacion] ASC, [CodProducto] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_InventarioAlmacen_Almacen] FOREIGN KEY ([CodAlmacen]) REFERENCES [dbo].[Almacen] ([CodAlmacen]),
    CONSTRAINT [FK_InventarioAlmacen_Ubicacion] FOREIGN KEY ([CodUbicacion], [CodAlmacen]) REFERENCES [dbo].[UbicacionFisica] ([CodUbicacion], [CodAlmacen])
);

