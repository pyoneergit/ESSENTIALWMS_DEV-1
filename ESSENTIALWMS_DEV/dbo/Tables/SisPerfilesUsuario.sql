CREATE TABLE [dbo].[SisPerfilesUsuario] (
    [CodUsuario]        VARCHAR (20) NOT NULL,
    [CodAlmacen]        VARCHAR (3)  NOT NULL,
    [CodPerfilPermisos] SMALLINT     NOT NULL,
    CONSTRAINT [PK_SisPerfilesUsuario] PRIMARY KEY CLUSTERED ([CodUsuario] ASC, [CodAlmacen] ASC, [CodPerfilPermisos] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_SisPerfilesUsuario_SisPerfilPermisos] FOREIGN KEY ([CodPerfilPermisos]) REFERENCES [dbo].[SisPerfilPermisos] ([CodPerfilPermisos]),
    CONSTRAINT [FK_SisPerfilesUsuario_Usuario] FOREIGN KEY ([CodAlmacen], [CodUsuario]) REFERENCES [dbo].[Usuario] ([CodAlmacen], [CodUsuario])
);

