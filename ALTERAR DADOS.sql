DECLARE
   v_COD produto_exercicio.cod%type := '92347';
   v_DESCRICAO produto_exercicio.descricao%type := 'Aroma do Campo - Mate - 1 Litro';
   v_CATEGORIA produto_exercicio.categoria%type := 'Águas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, REPLACE(v_DESCRICAO,'-','>')
   , v_CATEGORIA);
   COMMIT;
END;


--

DECLARE
  v_COD produto_exercicio.COD%TYPE := 67120;
  v_CATEGORIA produto_exercicio.CATEGORIA%TYPE := 'Mate';
BEGIN
  UPDATE produto_exercicio SET CATEGORIA = v_CATEGORIA WHERE COD = v_COD; 
  COMMIT;
END;


--

SELECT * FROM PRODUTO_EXERCICIO;


