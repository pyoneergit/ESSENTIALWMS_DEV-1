CREATE TABLE [dbo].[SisPermisoMenu] (
    [CodPerfilPermisos]   SMALLINT     NOT NULL,
    [NomAplicacion]       VARCHAR (30) NOT NULL,
    [NomMenu]             VARCHAR (50) NOT NULL,
    [TienePermiso]        BIT          NOT NULL,
    [FechaCreacion]       DATETIME     CONSTRAINT [DF_SM_FechaCreacion] DEFAULT (getdate()) NULL,
    [UsuarioCreacion]     VARCHAR (20) NULL,
    [FechaModificacion]   DATETIME     NULL,
    [UsuarioModificacion] VARCHAR (20) NULL,
    CONSTRAINT [PK_SisPermisoMenu] PRIMARY KEY NONCLUSTERED ([CodPerfilPermisos] ASC, [NomAplicacion] ASC, [NomMenu] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_SisPermisoMenu_SisAplicacion] FOREIGN KEY ([NomAplicacion]) REFERENCES [dbo].[SisAplicacion] ([NomAplicacion]),
    CONSTRAINT [FK_SisPermisoMenu_SisPerfilPermisos] FOREIGN KEY ([CodPerfilPermisos]) REFERENCES [dbo].[SisPerfilPermisos] ([CodPerfilPermisos]),
    CONSTRAINT [FK_SisPermisosMenu_SisMenu] FOREIGN KEY ([NomAplicacion], [NomMenu]) REFERENCES [dbo].[SisMenu] ([NomAplicacion], [NomMenu])
);

