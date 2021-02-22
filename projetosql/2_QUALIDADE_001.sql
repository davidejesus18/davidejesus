 /*1.	Recall para produto produzido 1 lote X
a.	Identificar clientes que compraram
b.	Identificar se material produzido ainda tem em estoque

##### TABELAS ENVOLVIDAS  #####
# NOTA_FISCAL                 #    
# **NOTA_FISCAL_ITENS         #    
# CLIENTES                    #    
# ESTOQUE_LOTE                #    
# ESTOQUE_MOV                 #    
###############################

*/
--a.	Identificar clientes que compraram MAT 1 LOTE '2017-244'

	SELECT A.COD_EMPRESA,A.COD_MAT,A.LOTE,B.ID_CLIFOR,D.RAZAO_CLIENTE, C.QTD
	FROM ESTOQUE_MOV A
	 INNER JOIN NOTA_FISCAL B
	 ON A.COD_EMPRESA=B.COD_EMPRESA
	 AND A.DOCT_ORIG=B.NUM_NF
	 AND B.TIP_NF='S'
	 INNER JOIN NOTA_FISCAL_ITENS C
	  ON A.COD_EMPRESA=B.COD_EMPRESA
	   AND A.DOCT_ORIG=C.NUM_NF
	   AND A.COD_MAT=C.COD_MAT
	 INNER JOIN CLIENTES D
	 ON A.COD_EMPRESA=B.COD_EMPRESA
	  AND B.ID_CLIFOR=D.ID_CLIENTE
	WHERE A.COD_EMPRESA='1'
	AND A.COD_MAT='1'
	AND A.LOTE='2017-244'
	AND A.TIP_MOV='S'
	AND A.ORIG='V'

  --b.	Identificar se material produzido ainda tem em estoque
/*  SELECT * FROM ESTOQUE_LOTE A
  WHERE A.COD_EMPRESA='2'
	AND A.COD_MAT='1'
	
  SELECT * FROM ESTOQUE A
  WHERE A.COD_EMPRESA='2'
	AND A.COD_MAT='1'
*/	

  SELECT A.COD_EMPRESA,A.COD_MAT,A.LOTE,A.QTD_LOTE
  FROM ESTOQUE_LOTE A
  WHERE A.COD_EMPRESA='1'
	AND A.COD_MAT='1'
	AND A.LOTE='2017-244'
