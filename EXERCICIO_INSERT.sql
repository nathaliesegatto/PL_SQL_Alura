CREATE TABLE PRODUTO_EXERCICIO (
COD NUMBER(5),
DESCRICAO VARCHAR2(100),
CATEGORIA VARCHAR2(50)
);

DECLARE
   v_COD NUMBER(5) := 41232;
   v_DESCRICAO VARCHAR2(100) := 'Sabor de Ver�o - Laranja - 1 Litro';
   v_CATEGORIA VARCHAR2(50) := 'Suco de Frutas';
BEGIN
   INSERT INTO produto_exercicio (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, v_DESCRICAO, v_CATEGORIA);
   COMMIT;
END;

SELECT * FROM produto_exercicio;  

DELETE FROM produto_exercicio;