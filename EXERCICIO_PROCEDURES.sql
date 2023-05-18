-- INCLUINDO PRODUTO --
CREATE OR REPLACE PROCEDURE INCLUINDO_PRODUTO
   (p_COD PRODUTO_EXERCICIO.COD%TYPE
   , p_DESCRICAO PRODUTO_EXERCICIO.DESCRICAO%TYPE
   , p_CATEGORIA PRODUTO_EXERCICIO.CATEGORIA%TYPE)
IS
BEGIN
    INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (p_COD, p_DESCRICAO, p_CATEGORIA);
   COMMIT;
END;


-- ALTERANDO CATEGORIA  DO PRODUTO --
CREATE OR REPLACE PROCEDURE ALTERANDO_CATEGORIA_PRODUTO
   (p_COD PRODUTO_EXERCICIO.COD%TYPE
   , p_CATEGORIA PRODUTO_EXERCICIO.CATEGORIA%TYPE)
IS
BEGIN
    UPDATE PRODUTO_EXERCICIO SET CATEGORIA = p_CATEGORIA WHERE COD = p_COD;
   COMMIT;
END;


-- EXCLUINDO PRODUTO --
CREATE OR REPLACE PROCEDURE EXCLUINDO_PRODUTO
   (p_COD PRODUTO_EXERCICIO.COD%TYPE)
IS
BEGIN
    DELETE FROM PRODUTO_EXERCICIO WHERE produto_exercicio.cod = p_COD;
   COMMIT;
END;





-- ###################################### -- 

-- EXECUTANDO - INCLUINDO_PRODUTO --
EXECUTE INCLUINDO_PRODUTO (33854, 'Frescor da Montanha - Aroma Laranja - 1 Litro', '�guas');
EXECUTE INCLUINDO_PRODUTO (89254, 'Frescor da Montanha - Aroma Uva - 1 Litro', 'Mate');

-- EXECUTANDO - ALTERANDO_CATEGORIA_PRODUTO --

EXECUTE ALTERANDO_CATEGORIA_PRODUTO (33854, '�guas');

-- EXECUTANDO - EXCLUINDO_PRODUTO --
EXECUTE EXCLUINDO_PRODUTO (89254)


-- ###################################### -- 


DROP PROCEDURE ALTERANDO_PRODUTO;

SELECT * FROM PRODUTO_EXERCICIO;