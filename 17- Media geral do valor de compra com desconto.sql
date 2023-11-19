-- Calcula a média geral do valor de compra final com desconto

-- Seleciona a média da coluna 'valorfinalcomdesconto' da tabela 'produtos_VL'
SELECT
    AVG(pv.valorfinalcomdesconto) AS Media_Geral_Valor_com_Desconto
FROM
    refera.produtos_VL pv;