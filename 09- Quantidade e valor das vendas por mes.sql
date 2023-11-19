-- Seleciona o mês e ano do pedido, a soma do ValorFinalComDesconto por mês/ano e a soma da quantidade de itens vendidos por mês/ano, ordenados por data crescente
SELECT
    TO_CHAR(l.DataPedido, 'YYYY-MM') AS MesAno, -- Extrai o mês e ano da coluna DataPedido
    SUM(pv.ValorFinalComDesconto) AS ValorTotalComDesconto, -- Soma os valores de ValorFinalComDesconto para cada mês/ano
    SUM(pv.Quantidade) AS QuantidadeItensVendidos -- Soma os valores da coluna Quantidade para cada mês/ano
FROM
    refera.logistica l -- Alias 'l' para a tabela logistica
JOIN
    refera.produtos_VL pv ON l.CupomID = pv.CupomID -- Faz um JOIN com a tabela produtos_VL usando CupomID
GROUP BY
    TO_CHAR(l.DataPedido, 'YYYY-MM') -- Agrupa os resultados pelo mês/ano
ORDER BY
    TO_CHAR(l.DataPedido, 'YYYY-MM') ASC; -- Ordena os resultados em ordem crescente pelo mês/ano
