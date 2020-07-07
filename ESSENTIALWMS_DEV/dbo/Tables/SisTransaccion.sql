CREATE TABLE [dbo].[SisTransaccion] (
    [CodTransaccion] VARCHAR (3)  NOT NULL,
    [NomTransaccion] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_SisTransaccion] PRIMARY KEY NONCLUSTERED ([CodTransaccion] ASC) WITH (FILLFACTOR = 90)
);

