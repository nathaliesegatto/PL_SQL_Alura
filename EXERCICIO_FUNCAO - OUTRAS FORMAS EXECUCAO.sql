
-- DENTRO DO SQL
VARIABLE g_DESCRICAO VARCHAR2(100); -- CRIANDO UMA VARIÁVEL
EXECUTE  :g_DESCRICAO:=obter_descricao_segmercado(3);
PRINT g_DESCRICAO;


-- USANDO O PL-SQL
SET SERVEROUTPUT ON
DECLARE
  v_DESCRICAO SEGMERCADO.DESCRICAO%TYPE;
  v_ID SEGMERCADO.ID%TYPE := 2;
BEGIN
  v_DESCRICAO := obter_descricao_segmercado(v_ID);
  dbms_output.put_line('A descrição do segmento de mercado é: ' || v_DESCRICAO);
END;
