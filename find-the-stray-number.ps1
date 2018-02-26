# https://www.codewars.com/kata/57f609022f4d534f05000024/solutions/python


function stray ([array]$arr)
{
    $arr | Group-Object -NoElement | Where-Object { $_.Count -eq 1 } | Select-Object -Property Name
}

$arr1 = @(1, 1, 2)
$arr2 = @(17, 17, 3, 17, 17, 17, 17)

stray($arr2)
