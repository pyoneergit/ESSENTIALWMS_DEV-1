CREATE TABLE [dbo].[ZonaUbicacion] (
    [CodZona]    VARCHAR (10) NOT NULL,
    [DescZona]   VARCHAR (30) NOT NULL,
    [CodAlmacen] VARCHAR (3)  NOT NULL,
    [EstadoZona] VARCHAR (10) DEFAULT ('A') NULL,
    CONSTRAINT [PK_ZonaUbicacion] PRIMARY KEY CLUSTERED ([CodZona] ASC, [CodAlmacen] ASC) WITH (FILLFACTOR = 90)
);

