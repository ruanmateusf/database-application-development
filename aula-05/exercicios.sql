set serveroutput on

declare 
    v_idade number := &idade;
begin
    if v_idade < 18 then 
        dbms_output.put_line ('Menor de idade');
    else 
        dbms_output.put_line ('Maior de idade');
    end if;
end;
