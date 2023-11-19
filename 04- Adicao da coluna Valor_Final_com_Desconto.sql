--Adcionei uma coluna [ValorFinalComDesconto] na tabela produtos_vl

-- Adiciona uma nova coluna chamada ValorFinalComDesconto e define seus valores
ALTER TABLE refera.produtos_VL
ADD COLUMN ValorFinalComDesconto DECIMAL(10,5);

-- Atualiza a nova coluna com o valor final com desconto
UPDATE refera.produtos_VL
SET ValorFinalComDesconto = Valor - Desconto;