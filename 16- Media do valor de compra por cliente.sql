-- Calcula a média do valor final com desconto para cada cliente por meio da tabela logistica

-- Seleciona o ClienteID, Cliente e a média da coluna 'valorfinalcomdesconto' da tabela 'produtos_VL'
SELECT
    c.ClienteID,
    c.Cliente,
    AVG(pv.valorfinalcomdesconto) AS Media_Valor_Final_Com_Desconto
FROM
    refera.clientes c -- Define um alias 'c' para a tabela 'clientes'
JOIN
    refera.logistica l ON c.ClienteID = l.ClienteID -- Faz um JOIN entre as tabelas 'clientes' e 'logistica' usando ClienteID
JOIN
    refera.produtos_VL pv ON l.CupomID = pv.CupomID -- Faz um JOIN entre as tabelas 'logistica' e 'produtos_VL' usando CupomID
GROUP BY
    c.ClienteID, c.Cliente -- Agrupa os resultados pelo ClienteID e Cliente
ORDER BY
    Media_Valor_Final_Com_Desconto DESC; -- Ordena Media Valor Final Com Desconto de forma decrescente