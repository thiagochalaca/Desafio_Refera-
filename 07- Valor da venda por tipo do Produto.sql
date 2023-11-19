--Valor total com desconto por Nome do produto

-- Seleciona o Produto e a soma do ValorFinalComDesconto para cada produto
SELECT
    pi.Produto, -- Seleciona a coluna Produto da tabela produtos_ID
    SUM(pv.ValorFinalComDesconto) AS ValorTotalComDesconto -- Soma os valores de ValorFinalComDesconto para cada Produto
FROM
    refera.produtos_ID pi -- Alias 'pi' para a tabela produtos_ID
JOIN
    refera.produtos_VL pv ON pi.ProdutoID = pv.ProdutoID -- Faz um JOIN com a tabela produtos_VL usando ProdutoID
GROUP BY
    pi.Produto -- Agrupa os resultados pelo campo Produto
ORDER BY
    ValorTotalComDesconto DESC; -- Ordena em ordem decrescente a coluna valor total com desconto 