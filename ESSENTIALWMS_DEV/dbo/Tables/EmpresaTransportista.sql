CREATE TABLE [dbo].[EmpresaTransportista] (
    [CodTransportista] VARCHAR (12) NOT NULL,
    [NomTransportista] VARCHAR (30) NULL,
    CONSTRAINT [PK_EmpresaTransportista] PRIMARY KEY CLUSTERED ([CodTransportista] ASC) WITH (FILLFACTOR = 90)
);

