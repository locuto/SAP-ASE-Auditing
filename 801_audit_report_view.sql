use sybsecurity
go
CREATE OR REPLACE VIEW dbo.audit_report_vw
as
select loginname, dbname,objname , extrainfo 
from sysaudits 
where eventtime > dateadd(dd,-7,getdate()) and dbname not like 'tempdb%'
group by loginname, dbname,objname, extrainfo
GO
