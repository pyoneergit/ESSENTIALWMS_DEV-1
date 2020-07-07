CREATE TABLE [dbo].[Cliente] (
    [CodCliente]     VARCHAR (20)  NOT NULL,
    [NomCliente]     VARCHAR (100) NOT NULL,
    [Fono]           VARCHAR (14)  NULL,
    [Direccion]      VARCHAR (60)  NULL,
    [Ciudad]         VARCHAR (50)  NULL,
    [Comuna]         VARCHAR (20)  NULL,
    [Telefono]       VARCHAR (30)  NULL,
    [Email]          VARCHAR (30)  NULL,
    [PuertaAsignada] VARCHAR (50)  NULL,
    [Ruta]           VARCHAR (20)  NULL,
    [Prioridad]      INT           NULL,
    CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED ([CodCliente] ASC) WITH (FILLFACTOR = 90)
);

