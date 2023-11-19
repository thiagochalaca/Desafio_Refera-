-- Seleciona a Quantidade de itens vendidos para cada cliente por meio da tabela logistica

-- Seleciona as colunas relevantes para a consulta final
SELECT
    c.ClienteID, -- Seleciona o ClienteID da tabela clientes
    c.Cliente, -- Seleciona o Cliente da tabela clientes
    SUM(pv.Quantidade) AS QuantidadeTotalDeVendas -- Soma a coluna Quantidade da tabela produtos_VL para cada grupo de ClienteID e Cliente
FROM
    refera.clientes c -- Define um alias 'c' para a tabela clientes
JOIN
    refera.logistica l ON c.ClienteID = l.ClienteID -- Faz um JOIN entre as tabelas clientes e logistica usando ClienteID
JOIN
    refera.produtos_VL pv ON l.CupomID = pv.CupomID -- Faz um JOIN entre as tabelas logistica e produtos_VL usando CupomID
GROUP BY
    c.ClienteID, c.Cliente -- Agrupa os resultados pelo ClienteID e Cliente
ORDER BY
    QuantidadeTotalDeVendas DESC; -- Ordena a coluna quantidade total de vendas em ordem decrescente 
