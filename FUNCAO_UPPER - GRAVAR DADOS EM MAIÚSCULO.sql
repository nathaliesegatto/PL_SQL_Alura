-- INSERT EM PL-SQL
DECLARE 
  v_ID SEGMERCADO.ID%TYPE := 3; -- SEGMERCADO.ID%TYPE = declara que a variável tem o mesmo tipo do campo ID da tabela segmercado
  v_DESCRICAO SEGMERCADO.DESCRICAO%TYPE := 'Atacao';  -- SEGMERCADO.DESCRICAO%TYPE = declara que a variável tem o mesmo tipo do campo DESCRICAO da tabela segmercado

BEGIN
  INSERT INTO segmercado (ID, DESCRICAO) VALUES (v_ID, UPPER(v_DESCRICAO)); -- Funçau Upper grava os dados com letras maiúsculas independente de como foram escritos
  COMMIT;
END;




 
SELECT * FROM segmercado ORDER BY 1 ASC;