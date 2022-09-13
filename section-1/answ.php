<?php
function changeMe($arr)
{
    foreach ($arr as $key => $value) {
        if (isset($value[3])) {
            $age = date("Y") - $value[3];
            if ($age > 0) {
                $value[3] = $age;
            } else {
                $value[3] = 'Invalid Birth Year';
            }
        } else {
            $value[3] = 'Invalid Birth Year';
        }

        $str = $key + 1 . ". {firstName: '$value[0]', lastName: '$value[1]', gender: '$value[2]', age: '$value[3]'} \r\n";

        echo $str;
    }
}


function shoppingTime($memberId = "", $money = 0)
{
    if (empty($memberId)) {
        return "Mohon maaf, toko X hanya berlaku untuk member saja";
    }

    if ($money < 50000) {
        return "Mohon maaf, uang tidak cukup";
    }

    $currentMoney = $money;
    $items = [];
    $sale = [
        'Sepatu Stacattu' => 1500000,
        'Baju Zoro' => 500000,
        'Baju H&N' => 250000,
        'Sweater Uniklooh' => 175000,
        'Casing Handphone ' => 50000,
    ];

    foreach ($sale as $key => $value) {
        if ($currentMoney >= $value) {
            array_push($items, $key);
            $currentMoney = $currentMoney - $value;
        }
    }

    return json_encode([
        "memberId" => $memberId,
        "money" => $money,
        "listPurchased" => $items,
        "changeMoney" => $currentMoney,
    ]);
}


function countProfit($shoppers)
{


    $sale = [
        'Sepatu Stacattu' => [
            'price' => 1500000,
            'stock' => 10,
        ],

        'Baju Zoro' => [
            'price' =>  500000,
            'stock' => 2,
        ],
        'Sweater Uniklooh' => [
            'price' =>  175000,
            'stock' => 1,
        ],
    ];

    $result = [
        [
            'product' => 'Sepatu Stacattu',
            'shoppers' => [],
            'leftOver' => 10,
            'totalProfit' => 0,
        ],
        [
            'product' => 'Baju Zoro',
            'shoppers' => [],
            'leftOver' => 2,
            'totalProfit' => 0,
        ],
        [
            'product' => 'Sweater Uniklooh',
            'shoppers' => [],
            'leftOver' => 1,
            'totalProfit' => 0
        ]
    ];

    $shoppers = json_decode($shoppers, true);
    if (count($shoppers) < 1) {
        return json_encode($shoppers);
    }

    foreach ($shoppers as $key => $value) {
        if (isset($sale[$value['product']]) && $sale[$value['product']]['stock'] >= $value['amount']) {
            $sale[$value['product']]['stock'] = $sale[$value['product']]['stock'] - $value['amount'];
            $idx = array_search($value['product'], array_column($result, 'product'));

            array_push($result[$idx]['shoppers'], $value['name']);
            $result[$idx]['leftOver'] = $sale[$value['product']]['stock'];
            $result[$idx]['totalProfit'] = $result[$idx]['totalProfit'] + ($value['amount'] * $sale[$value['product']]['price']);
        }
    }

    return json_encode($result);
}


echo "# chengeMe function\r\n";
changeMe([['Christ', 'Evans', 'Male', 1982], ['Robert', 'Downey', 'Male']]) . "\r\n";
changeMe([]) . "\r\n";
echo "==================================\r\n\r\n";


echo "# shoppingTime function\r\n";
echo (shoppingTime('1820RzKrnWn08', 2475000)) . "\r\n";
echo (shoppingTime('82Ku8Ma742', 170000)) . "\r\n";
echo (shoppingTime('', 2475000)) . "\r\n";
echo (shoppingTime('234JdhweRxa53', 15000)) . "\r\n";
echo (shoppingTime()) . "\r\n";
echo "==================================\r\n\r\n";


echo "# shoppingTime function\r\n";
echo (countProfit('[{"name": "Windi", "product": "Sepatu Stacattu", "amount": 2}, {"name":"Vanessa", "product": "Sepatu Stacattu", "amount": 3}, {"name": "Rani", "product": "Sweater Uniklooh", "amount": 2}]')) . "\r\n";
echo (countProfit('[{"name": "Windi", "product": "Sepatu Stacattu", "amount": 8}, {"name": "Vanessa", "product": "Sepatu Stacattu", "amount": 10}, {"name": "Rani", "product": "Sweater Uniklooh", "amount": 1}, {"name": "Devi", "product": "Baju Zoro", "amount": 1}, {"name": "Lisa", "product": "Baju Zoro", "amount": 1}]')) . "\r\n";
echo (countProfit('[{"name": "Windi", "product": "Sepatu Naiki", "amount": 5}]')) . "\r\n";
echo (countProfit('[]')) . "\r\n";
