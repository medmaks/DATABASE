
-- Завдання 1: Знайти список назв товарів через кому для кожного виробника.

SELECT manufacturer_code,
       group_concat(name, ', ') AS product_list
FROM goods
GROUP BY manufacturer_code;


-- Завдання 2: Знайти для кожного виробника кількість товарів з ціною менше 20 гривень.

SELECT manufacturer_code,
       COUNT(*) AS product_count
FROM goods
WHERE price < 20
GROUP BY manufacturer_code;


-- Завдання 3: Знайти середню ціну всіх товарів.

SELECT AVG(price) AS average_price
FROM goods;


-- Завдання 4: Відобразити виробників, що виготовляють більше одного товару з ціною менше 20 гривень.

SELECT manufacturer_code
FROM goods
WHERE price < 20
GROUP BY manufacturer_code
HAVING COUNT(*) > 1;