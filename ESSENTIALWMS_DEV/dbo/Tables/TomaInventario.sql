CREATE TABLE [dbo].[TomaInventario] (
    [NroInventario]       INT           NOT NULL,
    [CodAlmacen]          VARCHAR (3)   NOT NULL,
    [FecInventarioDesde]  SMALLDATETIME NOT NULL,
    [FecInventarioHasta]  SMALLDATETIME NOT NULL,
    [CodEstado]           CHAR (1)      CONSTRAINT [DF_TI_CodEstado] DEFAULT ('C') NOT NULL,
    [CodResponsable]      VARCHAR (20)  NOT NULL,
    [CodProducto]         VARCHAR (30)  NULL,
    [CodTipoMovto]        SMALLINT      NULL,
    [FecElaboracionDesde] SMALLDATETIME NULL,
    [FecElaboracionHasta] SMALLDATETIME NULL,
    [CalleDesde]          SMALLINT      NULL,
    [CalleHasta]          SMALLINT      NULL,
    [FechaCreacion]       DATETIME      CONSTRAINT [DF_TI_FechaCreacion] DEFAULT (getdate()) NULL,
    [UsuarioCreacion]     VARCHAR (20)  NULL,
    [FechaModificacion]   DATETIME      NULL,
    [UsuarioModificacion] VARCHAR (20)  NULL,
    CONSTRAINT [PK_TomaInventario] PRIMARY KEY CLUSTERED ([NroInventario] ASC) WITH (FILLFACTOR = 90)
);

