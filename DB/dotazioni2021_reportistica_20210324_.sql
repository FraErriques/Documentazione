USE [dotazioni2021]
GO

DECLARE	@return_value int



       EXEC [dbo].[usp_SIMTIMnonAttiveInBBT_LOAD]
EXEC [dbo].[usp_getCardSIMTIMnonAttiveInBBT_READ]

       EXEC [dbo].[usp_SIMBBTnonInContratto_LOAD]
EXEC [dbo].[usp_getCardSIMBBTnonInContratto_READ]


--##
USE [dotazioni2021]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[usp_getCardSIMTIMnonAttiveInBBT_READ]
as
select  -- NB. query per nei record TIM, ma non in quelli BBT  -----------
COUNT(tim.numero) as 'SIM attiva in Telecom ma in disuso in BBT'
from
[dotazioni2021].[dbo].[SIM_TIM] tim
where
tim.numero not in (select numero from [dotazioni2021].[dbo].[SIM_BBT] )

GO


--##

USE [dotazioni2021]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_getCardSIMBBTnonInContratto_READ]
as
select
COUNT(bbt.numero) as 'SIM in elenco BBT non piu attive in contratto'
from
[dotazioni2021].[dbo].[SIM_BBT] bbt
where
bbt.numero not in (select numero from [dotazioni2021].[dbo].[SIM_TIM] )
GO
