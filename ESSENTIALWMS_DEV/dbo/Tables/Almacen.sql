CREATE TABLE [dbo].[Almacen] (
    [CodAlmacen]    VARCHAR (3)  NOT NULL,
    [NomAlmacen]    VARCHAR (30) NOT NULL,
    [Representante] VARCHAR (30) NULL,
    [Direccion]     VARCHAR (30) NULL,
    [Ciudad]        VARCHAR (20) NULL,
    [Fono]          VARCHAR (10) NULL,
    CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED ([CodAlmacen] ASC) WITH (FILLFACTOR = 90)
);

