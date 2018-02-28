--Alterar senha: alter user rm77324  identified by 100597

-- 1) Desenvolver um bloco PL/SQL que exiba o nome e a idade armazenados em variáveis.
set serveroutput on

declare
    v_nome varchar2(80);
    v_idade number;
begin
    v_nome := 'Ruan';
    v_idade := 20;
    dbms_output.put_line('O nome é '||v_nome||' e a idade dele é '||v_idade);
end;

--2) Desenvolver um bloco PL/SQL que receba 5 valores e armazene a média dos 5 valores. Armazenar somente números inteiros.

declare
    v_number1 number;
    v_number2 number;
    v_number3 number;
    v_number4 number;
    v_number5 number;
    v_media number;
begin
    v_number1 := &1;
    v_number2 := &2;
    v_number3 := &3;
    v_number4 := &4;
    v_number5 := &5;
    v_media := trunch((v_number1+v_number2+v_number3+v_number4+v_number5)/5);
    dbms_output.put_line('A média desses números é: '||v_media);
end;

--3) Desenvolver um bloco PL/SQL que receba o nome completo e armazene somente o primeiro nome.

set serveroutput on
--accept nome  prompt "Mensagem personalizada"
--set scan off
declare
    v_nome varchar2(80);
begin
    v_nome := '&nome';
    dbms_output.put_line(substr(v_nome,1,instr(v_nome,' ')-1));
end;

--4) Desenvolver um bloco PL/SQL que receba um nome completo em letras minúsculas e imprima todos os nomes com a primeira letra em maiúsculo.

set serveroutput on

declare
    v_nome varchar2(80);
begin
    v_nome := 'ruan mateus francelino da silva';
    dbms_output.put_line(initcap(v_nome));
end;

--5) Desenvolver um bloco PL/SQL que receba uma data no formato 'dd/mm/yyyy' e imprima o dia da semana.

set serveroutput on

declare
    v_date date := to_date('01/01/2018','dd/mm/yyyy');
begin
    dbms_output.put_line(to_char(v_date,'day'));
end;
