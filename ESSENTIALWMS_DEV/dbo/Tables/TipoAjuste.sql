CREATE TABLE [dbo].[TipoAjuste] (
    [CodTipoAjuste] INT          NOT NULL,
    [NomTipoAjuste] VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_TipoAjuste] PRIMARY KEY CLUSTERED ([CodTipoAjuste] ASC) WITH (FILLFACTOR = 90)
);

