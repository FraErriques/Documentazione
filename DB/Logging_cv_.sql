 
SELECT TOP (20) [id]
      ,[when]
      ,[row_nature]
      ,[stack_depth]
      ,[function_name]
      ,[content]
  FROM [Logging].[dbo].[cv_db]
  order by [when] desc

  SELECT TOP (20) *
  FROM [Logging].[dbo].[cv_db_log]
  order by [when] desc

  SELECT count(*)  FROM [Logging].[dbo].[cv_db_log]
  SELECT count(*)  FROM [Logging].[dbo].[cv_db]
