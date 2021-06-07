use sybsecurity
go
exec sp_displayaudit
go

exec sp_audit "cmdtext",'all','user'
go
