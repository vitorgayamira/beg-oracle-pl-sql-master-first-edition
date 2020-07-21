rem record.sql
rem by Don Bales on 12/15/2006
rem An anonymous PL/SQL procedure to demonstrate
rem the use of PL/SQL records

declare

TYPE name_record is record (
first_name                            WORKER_T.first_name%TYPE,
middle_name                           WORKER_T.middle_name%TYPE,
last_name                             WORKER_T.last_name%TYPE );

TYPE name_table is table of name_record
index by binary_integer;

t_name                                name_table;

begin
 t_name(1).first_name  := 'JOHN';
 t_name(1).last_name   := 'DOE';
 t_name(2).first_name  := 'JANE';
 t_name(2).last_name   := 'DOE';

 pl(t_name(1).last_name||', '||t_name(1).first_name);
 pl(t_name(2).last_name||', '||t_name(2).first_name);
end;
/
