USE bdLojaRoupas2

SELECT*FROM tbFabricante
SELECT*FROM tbProduto
SELECT*FROM tbItensVenda

UPDATE tbFabricante
SET nomeFabricante = 'Turma da Malha'
WHERE codFabricante = 2

UPDATE tbProduto
SET pre�oProduto = pre�oProduto *0.9
WHERE codProduto = 2

UPDATE tbProduto
SET estoqueProduto = estoqueProduto-10
WHERE codProduto = 3

DELETE FROM tbItensVenda
WHERE codItensVenda= 2

DELETE FROM tbItensVenda
WHERE  quantidadeItens = 3
--N�o removemos o Fabricante ainda !!