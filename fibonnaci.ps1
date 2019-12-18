
$pos = Read-Host -Prompt 'Introduce la cantidad números que quieras ver: '

$a = 0
$b = 1
for($i = 1; $i -le $pos; $i++){
    echo $b
    $c = $a + $b
    $a = $b
    $b = $c
}