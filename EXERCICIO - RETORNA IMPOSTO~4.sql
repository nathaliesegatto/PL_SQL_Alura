
CREATE OR REPLACE FUNCTION retorna_imposto
  (p_ID IN PRODUTO_VENDA_EXERCICIO.id%TYPE)

RETURN produto_exercicio.imposto%TYPE

IS  v_imposto   produto_venda_exercicio.id%TYPE;
    v_categoria produto_exercicio.id%TYPE;
    P_ID produto_exercicio.id%TYPE;
    
BEGIN
 SELECT CATEGORIA INTO v_categoria FROM PRODUTO_EXERCICIO WHERE COD = 
        (SELECT COD FROM PRODUTO_VENDA_EXERCICIO WHERE ID = p_ID);
        
   
   IF v_CATEGORIA = 'Suco de Frutas' THEN 
      v_IMPOSTO := 10;
   ELSIF v_CATEGORIA = 'Águas' THEN 
         v_IMPOSTO := 20;
    ELSE v_IMPOSTO := 15;
    END IF;
    RETURN v_CATEGORIA;
END;




SELECT * FROM PRODUTO_VENDA_EXERCICIO;
