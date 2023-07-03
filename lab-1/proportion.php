<pre>
<?php
$products = [];
$turnover = 0;
for ($i=0; $i<10; $i++) {
    $price = rand(10, 30);
    $products[] = $price;
    $turnover += $price;
}
echo '<p>Товары следующих стоимостей:</p>';
print_r($products);
$expence = rand(100, 100);
echo "<p>Общей выручкой $turnover р. Расход для разбиения равен $expence р.</p>";

// todo

echo '<p>Новые стоимости товаров:</p>';
for($i = 0; $i < count($products); $i++) {
    $products[$i] = $products[$i] / $expence;
}

echo array_sum($products);
print_r($products);

