SELECT 
    ROUND(EXP(SUM(LN(value)))) AS value_product
FROM
    storehouses_products;