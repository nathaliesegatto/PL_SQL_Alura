
-- *** ALLTERANDO TODAS AS LINHAS DA COLUNA "DESCRIÇÃO" *** --
DECLARE
BEGIN
   UPDATE produto_exercicio SET DESCRICAO = REPLACE(v_DESCRICAO, '-', '>'); 
   COMMIT;
END;



-- *** ALTERANDO LINHAS ESPECÍFICAS DA COLUNA "DESCRIÇÃO" (POR ID) *** --
DECLARE
  v_COD produto_exercicio.COD%TYPE;
  v_DESCRICAO produto_exercicio.DESCRICAO%TYPE;
BEGIN
   v_cod := 1;
   UPDATE produto_exercicio SET DESCRICAO = REPLACE(v_DESCRICAO, '-', '>') WHERE COD = v_COD; 
   v_cod := 2;
   UPDATE produto_exercicio SET DESCRICAO = REPLACE(v_DESCRICAO, '-', '>') WHERE COD = v_COD; 
   v_cod := 3;
   UPDATE produto_exercicio SET DESCRICAO = REPLACE(v_DESCRICAO, '-', '>') WHERE COD = v_COD; 

COMMIT;
END;




SELECT * FROM produto_exercicio;