set serveroutput on

declare
    v_texto varchar2(100);
begin
    v_texto := 'Aula 1 PL/SQL';
    dbms_output.put_line(v_texto);
end;