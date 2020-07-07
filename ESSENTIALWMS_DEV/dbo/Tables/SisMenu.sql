CREATE TABLE [dbo].[SisMenu] (
    [NomAplicacion] VARCHAR (30)  NOT NULL,
    [IdMenu]        INT           NOT NULL,
    [NomMenu]       VARCHAR (50)  NOT NULL,
    [DescMenu]      VARCHAR (255) NOT NULL,
    [DescNivel]     VARCHAR (255) NOT NULL,
    [Nivel]         SMALLINT      NOT NULL,
    CONSTRAINT [PK_SisMenu] PRIMARY KEY NONCLUSTERED ([NomAplicacion] ASC, [NomMenu] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [UC_SisMenu] UNIQUE NONCLUSTERED ([NomAplicacion] ASC, [IdMenu] ASC, [NomMenu] ASC)
);

