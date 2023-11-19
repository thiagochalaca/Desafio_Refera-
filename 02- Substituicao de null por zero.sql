-- Na coluna [ValorFrete] tabela logistica, realizei a substituição dos valores nulos por 0 (zero)

-- Atualiza a coluna ValorFrete substituindo os valores nulos por 0
UPDATE refera.logistica
SET ValorFrete = COALESCE(ValorFrete, 0);