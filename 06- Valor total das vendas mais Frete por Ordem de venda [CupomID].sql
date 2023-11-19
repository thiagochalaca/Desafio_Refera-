-- Valor final com desconto + Valor do frete por Ordem de venda [CupomID]

-- Seleciona o CupomID e a soma do valor final com desconto mais a soma do valor do frete da tabela produtos_VL
SELECT
    pv.CupomID, -- Seleciona o identificador único do cupom de venda
    (SUM(pv.valorfinalcomdesconto) + SUM(l.ValorFrete)) AS Valor_Total_Venda_Mais_Frete -- Calcula a soma do valor final com desconto e do valor do frete e renomeia como Valor_Total_Venda_Mais_Frete
FROM
    refera.produtos_VL pv -- Define um alias 'pv' para a tabela 'produtos_VL'
JOIN
    refera.logistica l ON pv.CupomID = l.CupomID -- Realiza uma junção entre as tabelas produtos_VL e logistica usando CupomID
GROUP BY
    pv.CupomID -- Agrupa os resultados por CupomID
ORDER BY
    Valor_Total_Venda_Mais_Frete ASC; -- Ordena os resultados em ordem crescente com base na soma do valor final com desconto e do valor do frete
