DECLARE
   v_ID SEGMERCADO.ID%TYPE := 3;
   v_DESCRICAO SEGMERCADO.DESCRICAO%TYPE := 'Atacadista';
BEGIN
   UPDATE segmercado SET descricao = UPPER(v_descricao) WHERE id = v_id;
   v_ID := 1;
   v_DESCRICAO := 'Varejista';
   UPDATE segmercado SET descricao = UPPER(v_descricao) WHERE id = v_id;
   v_ID := 2;
   v_DESCRICAO := 'Industrial';
   UPDATE segmercado SET descricao = UPPER(v_descricao) WHERE id = v_id;
   COMMIT;
   
END;

 
DELETE FROM segmercado WHERE ID = '3';


INSERT INTO segmercado (ID, DESCRICAO) VALUES (3, 'ATACADISTA');

