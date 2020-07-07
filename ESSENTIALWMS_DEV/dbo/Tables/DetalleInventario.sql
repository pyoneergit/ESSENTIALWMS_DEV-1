CREATE TABLE [dbo].[DetalleInventario] (
    [IdInventario]       BIGINT       IDENTITY (1, 1) NOT NULL,
    [NroInventario]      INT          NOT NULL,
    [CodAlmacen]         VARCHAR (3)  NOT NULL,
    [CodLpn]             VARCHAR (20) NOT NULL,
    [CodUbicacion]       VARCHAR (50) NOT NULL,
    [CodProducto]        VARCHAR (30) NOT NULL,
    [Lote]               VARCHAR (20) NULL,
    [CantidadSistema]    SMALLINT     NOT NULL,
    [CantidadInventario] SMALLINT     NOT NULL,
    [FechaElaboracion]   DATETIME     NULL,
    [FueInventariada]    BIT          NOT NULL,
    CONSTRAINT [PK_DetalleInventario] PRIMARY KEY CLUSTERED ([IdInventario] ASC, [CodAlmacen] ASC) WITH (FILLFACTOR = 90)
);

