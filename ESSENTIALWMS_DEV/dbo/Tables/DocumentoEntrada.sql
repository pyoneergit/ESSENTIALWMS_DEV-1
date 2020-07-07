CREATE TABLE [dbo].[DocumentoEntrada] (
    [NroEntrada]           INT           IDENTITY (1, 1) NOT NULL,
    [CodAlmacen]           VARCHAR (3)   NOT NULL,
    [NroDocEntrada]        VARCHAR (20)  NOT NULL,
    [CodEstado]            CHAR (1)      CONSTRAINT [DF_DE_CodEstado] DEFAULT ('A') NOT NULL,
    [NroDocReferencia]     VARCHAR (20)  NULL,
    [CodDocEntrada]        SMALLINT      NOT NULL,
    [CodAlmacenOrigen]     VARCHAR (3)   NULL,
    [CodProveedor]         VARCHAR (20)  NULL,
    [Observaciones]        VARCHAR (255) NULL,
    [FechaCreacion]        SMALLDATETIME CONSTRAINT [DF_DE_FechaCreacion] DEFAULT (getdate()) NULL,
    [FechaEmision]         SMALLDATETIME CONSTRAINT [DF_DE_FechaEmision] DEFAULT (getdate()) NULL,
    [FecEstimadaRecepcion] SMALLDATETIME NULL,
    CONSTRAINT [PK_DocumentoEntrada] PRIMARY KEY CLUSTERED ([NroEntrada] ASC, [CodAlmacen] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_DocEntrada_Almacen] FOREIGN KEY ([CodAlmacen]) REFERENCES [dbo].[Almacen] ([CodAlmacen]),
    CONSTRAINT [FK_DocumentoEntrada_Proveedor] FOREIGN KEY ([CodProveedor]) REFERENCES [dbo].[Proveedor] ([CodProveedor]),
    CONSTRAINT [UC_DocumentoEntrada_Proveedor] UNIQUE NONCLUSTERED ([NroEntrada] ASC, [CodProveedor] ASC)
);

