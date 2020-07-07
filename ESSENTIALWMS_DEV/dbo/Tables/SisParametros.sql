CREATE TABLE [dbo].[SisParametros] (
    [CodParametro]     SMALLINT      IDENTITY (1, 1) NOT NULL,
    [NomParametro]     VARCHAR (20)  NOT NULL,
    [Descripcion]      VARCHAR (255) NOT NULL,
    [TipoDato]         CHAR (4)      NOT NULL,
    [ValorActual]      VARCHAR (100) NOT NULL,
    [RequiereMinMax]   CHAR (1)      NOT NULL,
    [ValorMinimo]      VARCHAR (20)  NULL,
    [ValorMaximo]      VARCHAR (20)  NULL,
    [FecActualizacion] DATETIME      CONSTRAINT [DF_SisParametros_FecActualizacion] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_SisParametros] PRIMARY KEY CLUSTERED ([NomParametro] ASC) WITH (FILLFACTOR = 90)
);

