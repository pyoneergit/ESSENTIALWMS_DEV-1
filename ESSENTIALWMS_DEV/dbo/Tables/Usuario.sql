CREATE TABLE [dbo].[Usuario] (
    [CodUsuario]  VARCHAR (20) NOT NULL,
    [CodAlmacen]  VARCHAR (3)  NOT NULL,
    [Clave]       VARCHAR (20) NOT NULL,
    [NomUsuario]  VARCHAR (50) NOT NULL,
    [Rut]         VARCHAR (20) NULL,
    [Estado]      CHAR (1)     NOT NULL,
    [CodZona]     VARCHAR (10) NOT NULL,
    [AreaPicking] VARCHAR (20) NOT NULL,
    [Dispositivo] VARCHAR (30) NULL,
    [RespuestaSP] BIT          NULL,
    [MensajeSP]   VARCHAR (50) NULL,
    [TipoUsuario] VARCHAR (3)  NULL,
    CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED ([CodAlmacen] ASC, [CodUsuario] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_Usuario_Almacen] FOREIGN KEY ([CodAlmacen]) REFERENCES [dbo].[Almacen] ([CodAlmacen])
);

