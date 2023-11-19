-- Seleciona a quantidade de itens vendidos por produto, ordenados por quantidade em ordem decrescente
SELECT
    pi.Produto, -- Seleciona a coluna Produto da tabela produtos_ID
    SUM(pv.Quantidade) AS QuantidadeTotalDeVendas -- Soma os valores da coluna Quantidade para cada produto
FROM
    refera.produtos_ID pi -- Alias 'pi' para a tabela produtos_ID
JOIN
    refera.produtos_VL pv ON pi.ProdutoID = pv.ProdutoID -- Faz um JOIN com a tabela produtos_VL usando ProdutoID
GROUP BY
    pi.Produto -- Agrupa os resultados pelo Produto
ORDER BY
    QuantidadeTotalDeVendas DESC; -- Ordena os resultados em ordem decrescente pela coluna QuantidadeTotal
