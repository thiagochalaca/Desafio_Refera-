-- Seleciona a data do pedido, a soma do ValorFinalComDesconto por dia e a soma da quantidade de itens vendidos por dia, ordenados por data crescente
SELECT
    l.DataPedido, -- Seleciona a coluna DataPedido da tabela logistica
    SUM(pv.ValorFinalComDesconto) AS ValorTotalComDesconto, -- Soma os valores de ValorFinalComDesconto para cada dia
    SUM(pv.Quantidade) AS QuantidadeItensVendidos -- Soma os valores da coluna Quantidade para cada dia
FROM
    refera.logistica l -- Alias 'l' para a tabela logistica
JOIN
    refera.produtos_VL pv ON l.CupomID = pv.CupomID -- Faz um JOIN com a tabela produtos_VL usando CupomID
GROUP BY
    l.DataPedido -- Agrupa os resultados pelo dia
ORDER BY
    l.DataPedido ASC; -- Ordena os resultados em ordem crescente pela coluna DataPedido
