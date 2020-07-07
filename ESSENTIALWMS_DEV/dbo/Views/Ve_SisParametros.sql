
/****** Object:  View dbo.Ve_SisParametros    Script Date: 4/30/2020 12:41:45 AM ******/



CREATE View dbo.Ve_SisParametros
As
Select SP.NomParametro, SP.CodParametro,TSP.NomParametro as NomParamTipo, SP.ValorActual, SP.TipoDato, SP.ValorMinimo, SP.ValorMaximo, 
           SP.RequiereReIniciarApp, SP.FecActualizacion, SP.Descripcion
From SisParametros SP Inner Join 
         SisTipoParametro TSP On TSP.CodParametro = SP.CodParametro 


