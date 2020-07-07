CREATE TABLE [dbo].[DetalleDocSalida] (
    [NroSalida]           INT          NOT NULL,
    [NroLinea]            SMALLINT     NOT NULL,
    [IdProducto]          INT          NULL,
    [CodProducto]         VARCHAR (30) NOT NULL,
    [CodAlmacen]          VARCHAR (3)  NOT NULL,
    [Cantidad]            INT          CONSTRAINT [DF_DDS_Cantidad] DEFAULT ((0)) NOT NULL,
    [CantidadDespachada]  INT          NULL,
    [Lote]                VARCHAR (20) NULL,
    [FuePreparada]        BIT          CONSTRAINT [DF_DDS_FuePreparada] DEFAULT ((0)) NULL,
    [CodEstado]           CHAR (1)     CONSTRAINT [DF_DDS_CodEstado] DEFAULT ('A') NOT NULL,
    [FechaCreacion]       DATETIME     CONSTRAINT [DF_DDS_FechaCreacion] DEFAULT (getdate()) NULL,
    [UsuarioCreacion]     VARCHAR (20) NULL,
    [FechaModificacion]   DATETIME     CONSTRAINT [DF_DDS_FechaModificacion] DEFAULT (getdate()) NULL,
    [UsuarioModificacion] VARCHAR (20) NULL,
    CONSTRAINT [PK_DetalleDocSalida] PRIMARY KEY CLUSTERED ([NroSalida] ASC, [NroLinea] ASC, [CodAlmacen] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_DetalleDocSalida_DocumentoSalida] FOREIGN KEY ([NroSalida], [CodAlmacen]) REFERENCES [dbo].[DocumentoSalida] ([NroSalida], [CodAlmacen]),
    CONSTRAINT [FK_DetalleDocSalida_Producto] FOREIGN KEY ([IdProducto]) REFERENCES [dbo].[Producto] ([IdProducto])
);

