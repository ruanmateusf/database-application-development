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

declare
    v_cont number:=0;
begin
    loop
        v_cont:=v_cont+1;
        dbms_output.put_line (v_cont);
        exit when v_cont=20;
    end loop;
end;

begin
    for x in 1..20 loop
        dbms_output.put_line (x);
    end loop;
end;
