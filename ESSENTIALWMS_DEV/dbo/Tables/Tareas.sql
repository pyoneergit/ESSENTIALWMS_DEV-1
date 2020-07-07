CREATE TABLE [dbo].[Tareas] (
    [IdTarea]            INT          IDENTITY (1, 1) NOT NULL,
    [CodTarea]           VARCHAR (3)  NOT NULL,
    [NomTarea]           VARCHAR (50) NOT NULL,
    [CodEstado]          CHAR (1)     CONSTRAINT [DF_Tareas_CodEstado] DEFAULT ('N') NOT NULL,
    [Prioridad]          INT          NOT NULL,
    [NroReferencia]      VARCHAR (50) NULL,
    [UsuariosRequeridos] INT          CONSTRAINT [DF_Tareas_UsuariosAsignados] DEFAULT ((0)) NOT NULL,
    [UsuariosAsignados]  INT          CONSTRAINT [DF_Tareas_UsuariosActivos] DEFAULT ((0)) NOT NULL,
    [CodAlmacen]         VARCHAR (3)  NOT NULL,
    [CodUbicacion]       VARCHAR (50) NULL,
    [CodLpn]             VARCHAR (20) NULL,
    [CodProducto]        VARCHAR (30) NULL,
    [Cantidad]           INT          NULL,
    [CodZona]            VARCHAR (10) NULL,
    [CodUsuario]         VARCHAR (20) NULL,
    [FechaCreacion]      DATE         CONSTRAINT [DF_Tareas_FechaCreacion] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Tareas] PRIMARY KEY CLUSTERED ([IdTarea] ASC, [CodAlmacen] ASC),
    CONSTRAINT [FK_Tareas_TipoTareas] FOREIGN KEY ([CodTarea]) REFERENCES [dbo].[TipoTareas] ([CodTarea])
);

