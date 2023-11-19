-- Seleciona o ano do pedido, a soma do ValorFinalComDesconto por ano e a soma da quantidade de itens vendidos por ano, ordenados por ano crescente
SELECT
    EXTRACT(YEAR FROM l.DataPedido) AS Ano, -- Extrai o ano da coluna DataPedido
    SUM(pv.ValorFinalComDesconto) AS ValorTotalComDesconto, -- Soma os valores de ValorFinalComDesconto para cada ano
    SUM(pv.Quantidade) AS QuantidadeItensVendidos -- Soma os valores da coluna Quantidade para cada ano
FROM
    refera.logistica l -- Alias 'l' para a tabela logistica
JOIN
    refera.produtos_VL pv ON l.CupomID = pv.CupomID -- Faz um JOIN com a tabela produtos_VL usando CupomID
GROUP BY
    EXTRACT(YEAR FROM l.DataPedido) -- Agrupa os resultados pelo ano
ORDER BY
    EXTRACT(YEAR FROM l.DataPedido) ASC; -- Ordena os resultados em ordem crescente pelo ano
