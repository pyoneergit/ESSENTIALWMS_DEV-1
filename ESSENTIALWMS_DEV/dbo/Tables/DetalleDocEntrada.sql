CREATE TABLE [dbo].[DetalleDocEntrada] (
    [NroEntrada]          INT          IDENTITY (1, 1) NOT NULL,
    [NroLinea]            SMALLINT     NOT NULL,
    [IdProducto]          INT          NULL,
    [CodProducto]         VARCHAR (30) NOT NULL,
    [CodAlmacen]          VARCHAR (3)  NOT NULL,
    [Cantidad]            INT          CONSTRAINT [DF_DDE_Cantidad] DEFAULT ((0)) NOT NULL,
    [Lote]                VARCHAR (20) NULL,
    [CodEstado]           CHAR (1)     CONSTRAINT [DF_DDE_CodEstado] DEFAULT ('A') NOT NULL,
    [FechaCreacion]       DATETIME     CONSTRAINT [DF_DDE_FechaCreacion] DEFAULT (getdate()) NULL,
    [UsuarioCreacion]     VARCHAR (20) NULL,
    [FechaModificacion]   DATETIME     NULL,
    [UsuarioModificacion] VARCHAR (20) NULL,
    CONSTRAINT [PK_DetalleDocEntrada] PRIMARY KEY CLUSTERED ([NroEntrada] ASC, [NroLinea] ASC, [CodAlmacen] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_DetalleDocEntrada_DocEntrada] FOREIGN KEY ([NroEntrada], [CodAlmacen]) REFERENCES [dbo].[DocumentoEntrada] ([NroEntrada], [CodAlmacen])
);

