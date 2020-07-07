CREATE TABLE [dbo].[TipoBloqueo] (
    [CodTipoBloqueo] INT          NOT NULL,
    [NomTipoBloqueo] VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_TipoBloqueo] PRIMARY KEY CLUSTERED ([CodTipoBloqueo] ASC) WITH (FILLFACTOR = 90)
);

