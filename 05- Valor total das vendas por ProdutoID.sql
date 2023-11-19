-- Valor total das vendas com descontos por ProdutoID

-- Seleciona o ProdutoID e a soma do valor final com desconto da tabela produtos_VL
SELECT
    pv.ProdutoID, -- Seleciona o identificador único do produto
    SUM(pv.valorfinalcomdesconto) AS ValorTotalVendas -- Calcula a soma do valor final com desconto e renomeia como ValorTotalVendas
FROM
    refera.produtos_VL pv -- Define um alias 'pv' para a tabela 'produtos_VL'
GROUP BY
    pv.ProdutoID -- Agrupa os resultados por ProdutoID
ORDER BY
    ValorTotalVendas ASC; -- Ordena os resultados em ordem crescente com base na soma do valor final com desconto
