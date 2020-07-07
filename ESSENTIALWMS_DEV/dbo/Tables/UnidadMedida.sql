CREATE TABLE [dbo].[UnidadMedida] (
    [IdUnidadMedida]   INT             IDENTITY (1, 1) NOT NULL,
    [IdProducto]       INT             NOT NULL,
    [CodProducto]      VARCHAR (30)    NOT NULL,
    [CodUnidadMedida]  VARCHAR (2)     NOT NULL,
    [DescUnidadMedida] VARCHAR (20)    NOT NULL,
    [CodBarra]         VARCHAR (200)   NOT NULL,
    [CodAlmacen]       VARCHAR (3)     NOT NULL,
    [FactorConversion] NUMERIC (10, 2) CONSTRAINT [DF_UM_FactorConversion] DEFAULT ((0)) NOT NULL,
    [Peso]             NUMERIC (10, 2) CONSTRAINT [DF_UM_Peso] DEFAULT ((0)) NOT NULL,
    [CapasPorLpn]      NUMERIC (10)    CONSTRAINT [DF_UM_CapasPorLpn] DEFAULT ((0)) NOT NULL,
    [UnidadesPorCapas] NUMERIC (10)    CONSTRAINT [DF_UM_UnidadesPorCapas] DEFAULT ((0)) NOT NULL,
    [Pickiable]        CHAR (1)        CONSTRAINT [DF_UM_Pickiable] DEFAULT ('Y') NOT NULL,
    [Largo]            NUMERIC (10, 2) CONSTRAINT [DF_UM_Largo] DEFAULT ((0)) NULL,
    [Ancho]            NUMERIC (10, 2) CONSTRAINT [DF_UM_Ancho] DEFAULT ((0)) NULL,
    [Alto]             NUMERIC (10, 2) CONSTRAINT [DF_UM_Alto] DEFAULT ((0)) NULL,
    [Conveyable]       VARCHAR (3)     NULL,
    [RequierePacking]  CHAR (1)        CONSTRAINT [DF_UnidadMedida_RequierePacking] DEFAULT ('N') NULL,
    CONSTRAINT [PK_UnidadMedida] PRIMARY KEY CLUSTERED ([IdUnidadMedida] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_UnidadMedida_Producto] FOREIGN KEY ([IdProducto], [CodAlmacen]) REFERENCES [dbo].[Producto] ([IdProducto], [CodAlmacen]),
    CONSTRAINT [UC_UnidadMedida_Almacen] UNIQUE NONCLUSTERED ([CodUnidadMedida] ASC, [CodAlmacen] ASC, [CodProducto] ASC)
);

