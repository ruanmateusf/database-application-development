/*1) Desenvolver um bloco PL/SQL que armazene o resultado do comando select abaixo e imprima os valores utilizando o dbms_output.

Comando: select user, sysdate from dual;*/

set serveroutput on
declare
   v_nm_usuario varchar2(100);
   v_data date;
begin
    select user, sysdate 
      into v_nm_usuario, v_data
      from dual;
      
    DBMS_OUTPUT.put_line('Usu·rio: '|| v_nm_usuario || ' - data login: '|| v_data);
end;



/*2) Desenvolver um bloco PL/SQL que realize a sumariza√ß√£o da pontua√ß√£o dos clientes existentes na tabela pf0064.cliente_erp.*/

declare
   v_soma number;
begin
     select sum(ce.pontuacao)
       into v_soma
       from cliente_erp ce;
       
    DBMS_OUTPUT.PUT_LINE('O total de pontuaÁ„o dos clientes È: ' || v_soma);
    
end;


select *
  from cliente_erp ce;
  
update cliente_erp ce set ce.PONTUACAO = 5 where ce.cd_cliente = 2;


/*3) Desenvolver um bloco PL/SQL que retorne a quantidade de caracteres ocupados pelos dados da tabela pf0064.cliente_erp.*/

declare
   v_soma_caracteres number;
begin
  Select sum(LENGTH (cd_cliente)) + sum(LENGTH (nm_cliente)) + sum(nvl(LENGTH (pontuacao),0))
    into v_soma_caracteres
    from cliente_erp;
   DBMS_OUTPUT.put_line('A quantidade de caracteres ocupados na tabela È: ' || v_soma_caracteres || ' caracter(es)'); 
end;



