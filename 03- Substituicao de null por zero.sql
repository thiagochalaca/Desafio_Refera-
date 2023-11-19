-- Na coluna [Desconto] tabela produtos_VL, realizei a substituição dos valores nulos por 0 (zero)

-- Atualiza a coluna Desconto substituindo os valores nulos por 0
UPDATE refera.produtos_VL
SET Desconto = COALESCE(Desconto, 0);