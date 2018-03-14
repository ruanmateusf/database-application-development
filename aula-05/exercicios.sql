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



1-) Desenvolva um bloco anônimo que exiba 365 dias (1 ano) após a entrada de uma data. Após a solicitação da entrada do campo data, exiba sequencialmente a data e o dia da semana que representa essa data. Utilize o comando loop para realizar essa tarefa. Utilize o pacote DBMS_OUTPUT para exibir esses valores
Solução:


2-) Desenvolva um bloco anônimo que receba um número positivo, que seja maior que 5, e traga todos os números ímpares do intervalo entre o número 1 e o valor recebido.



3-) Desenvolva um script que vai receber como parâmetro o código do proprietário e retornar o código do proprietário, o nome do proprietário e o tipo de proprietário (Pessoa Jurídica ou Pessoa Física). A coluna tp_proprietario irá informar qual é o tipo de proprietário. (P ou J). Converta esse valor para P (Pessoa Física) e J para (Pessoa Jurídica) ** Utilize o comando IF para realizar essa tarefa.

** Faça o acesso a tabela LOC_PROPRIETARIO pela clausula SELECT...INTO.....

Utilize o pacote DBMS_OUTPUT.PUT_LINE para exibir o texto conforme abaixo :

'O proprietário ' || <cd_proprietario>> || ' - ' || <<nm_proprietário>> ||  ' é  ' || <<tp_proprietario(pessoa física ou pessoa jurídica>>.

Caso o código do proprietário não esteja cadastrado na  tabela, retornar a mensagem  “NÃO EXISTE DADOS DE PROPRIETARIO CADASTRADO !!”:
Solução:
