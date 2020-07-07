CREATE TABLE [dbo].[DetallePicking] (
    [IdPicking]          INT          IDENTITY (1, 1) NOT NULL,
    [CodAlmacen]         VARCHAR (3)  NOT NULL,
    [NroSalida]          INT          NOT NULL,
    [NroLinea]           SMALLINT     NOT NULL,
    [Tipo]               CHAR (2)     NULL,
    [CodUnidadMedida]    VARCHAR (3)  NULL,
    [IdTarea]            INT          NULL,
    [CodTarea]           VARCHAR (3)  NULL,
    [CodEstado]          VARCHAR (10) NULL,
    [CodLpn]             VARCHAR (20) NULL,
    [CodProducto]        VARCHAR (30) NULL,
    [Lote]               VARCHAR (80) NULL,
    [CodSerie]           VARCHAR (40) NULL,
    [CantidadNoAsignada] FLOAT (53)   NOT NULL,
    [CantidadAsignada]   FLOAT (53)   NOT NULL,
    [CantidadPickeada]   FLOAT (53)   NOT NULL,
    [CantidadPuerta]     FLOAT (53)   NOT NULL,
    [CantidadEmpaque]    FLOAT (53)   NOT NULL,
    [UbicacionPicking]   VARCHAR (50) NULL,
    [SecuenciaOrden]     INT          NULL,
    [UbicacionEmpaque]   VARCHAR (50) NULL,
    [CodZona]            VARCHAR (20) NULL,
    [IdOla]              INT          NULL,
    [UsuarioAsignado]    VARCHAR (10) NULL,
    [AreaPicking]        VARCHAR (10) NULL,
    CONSTRAINT [PK_DetallePicking] PRIMARY KEY NONCLUSTERED ([IdPicking] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_DetallePicking_Salida] FOREIGN KEY ([NroSalida], [CodAlmacen]) REFERENCES [dbo].[DocumentoSalida] ([NroSalida], [CodAlmacen]),
    CONSTRAINT [FK_DetallePicking_Tareas] FOREIGN KEY ([IdTarea], [CodAlmacen]) REFERENCES [dbo].[Tareas] ([IdTarea], [CodAlmacen])
);


GO
CREATE NONCLUSTERED INDEX [IX_DetallePicking]
    ON [dbo].[DetallePicking]([IdTarea] ASC);

