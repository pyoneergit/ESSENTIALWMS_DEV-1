CREATE TABLE [dbo].[TipoTareas] (
    [CodTarea]         VARCHAR (3)   NOT NULL,
    [NomTarea]         VARCHAR (50)  NULL,
    [CodEstado]        CHAR (1)      CONSTRAINT [DF_TipoTareas_CodEstado] DEFAULT ('A') NOT NULL,
    [PrioridadDefecto] INT           CONSTRAINT [DF_TipoTareas_PrioridadDefecto] DEFAULT ((10)) NOT NULL,
    [SPRelacionado]    VARCHAR (100) NULL,
    CONSTRAINT [PK_TipoTareas] PRIMARY KEY CLUSTERED ([CodTarea] ASC) WITH (FILLFACTOR = 90)
);

