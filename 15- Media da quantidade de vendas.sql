-- Calcula a média da coluna Quantidade da tabela produtos_VL
SELECT
    AVG(Quantidade) AS Media_da_quantidade_de_itens_vendidos -- Calcula a média da coluna Quantidade e a renomeia como MediaQuantidade
FROM
    refera.produtos_VL; -- Seleciona a tabela produtos_VL como fonte de dados
