CREATE TABLE [dbo].[Proveedor] (
    [CodProveedor] VARCHAR (20) NOT NULL,
    [NomProveedor] VARCHAR (60) NOT NULL,
    [Fono]         VARCHAR (14) NULL,
    [Direccion]    VARCHAR (30) NULL,
    [Ciudad]       VARCHAR (20) NULL,
    CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED ([CodProveedor] ASC) WITH (FILLFACTOR = 90)
);

