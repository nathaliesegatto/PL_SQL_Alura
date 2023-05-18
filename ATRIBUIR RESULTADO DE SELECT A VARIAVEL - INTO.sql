SET SERVEROUTPUT ON;

DECLARE
  v_ID SEGMERCADO.ID%TYPE := 2;
  v_IDSaida SEGMERCADO.ID%TYPE;
  v_DESCRICAO SEGMERCADO.DESCRICAO%TYPE;

BEGIN
   SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = v_ID; -- 'INTO' joga o resultado da seleção dentro da variável v_DESCRICAO. Necessário que o select retorne uma única célula.
   dbms_output.put_line(v_DESCRICAO);
END;


