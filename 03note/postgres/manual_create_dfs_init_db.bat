pushd %cd%
set Service=%1%
if not defined Service set Service=localhost
set Port=%2%
if not defined Port set Port=5432
set LoginUser=%3%
if not defined LoginUser set LoginUser=postgres
set Password=%4%
if not defined Password set Password=postgres
set DatabaseName=dspdm_db
set PGPASSWORD=%Password%
"%cd%\postgresbin\psql" -h %Service% -p %Port% -U %LoginUser% -d postgres -w -c "select pg_terminate_backend(pg_stat_activity.pid) from pg_stat_activity where datname='%DatabaseName%' and pid<>pg_backend_pid();"
"%cd%\postgresbin\psql" -h %Service% -p %Port% -U %LoginUser% -d postgres -w -c "drop database if exists %DatabaseName%;"
"%cd%\postgresbin\psql" -h %Service% -p %Port% -U %LoginUser% -d postgres -w -c "create database %DatabaseName%;"
"%cd%\postgresbin\psql" -h %Service% -p %Port% -U %LoginUser% -d %DatabaseName% -f %cd%\dspdm_schema.bak
popd