CREATE TABLE [dbo].[SisPerfilPermisos] (
    [CodPerfilPermisos] SMALLINT     IDENTITY (1, 1) NOT NULL,
    [NomPerfilPermisos] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_SisPerfilPermisos] PRIMARY KEY NONCLUSTERED ([CodPerfilPermisos] ASC) WITH (FILLFACTOR = 90)
);

