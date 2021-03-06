create or replace package SCOPES as
/*
scopes.pks
by Donald J. Bales on 12/15/2006
A package to test scope
*/

-- Here's a global variable declaration
gv_scope                              varchar2(80) := 
  'I''m a global (or package spec) variable';
  
-- Here's a global (or package spec) function declaration
FUNCTION my_scope_is_global
return                                varchar2;

-- Here's a global (or package spec) procedure declaration
PROCEDURE my_scope_is_global;


end SCOPES;
/
@se.sql SCOPES
