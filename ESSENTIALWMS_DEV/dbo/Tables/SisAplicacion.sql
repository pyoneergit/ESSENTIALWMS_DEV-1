CREATE TABLE [dbo].[SisAplicacion] (
    [NomAplicacion]  VARCHAR (30)  NOT NULL,
    [DescAplicacion] VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_SisAplicacion] PRIMARY KEY NONCLUSTERED ([NomAplicacion] ASC) WITH (FILLFACTOR = 90)
);

