$n = Read-Host -Prompt 'Introduce la cantidad números que quieras ver: ';


function Fib($n) {
    switch ($n) {
        0 { 1; break }
        1 { 1; break }
        default {  # must use brackets (), similar to eval() in js
            (Fib($n - 1)) + (Fib($n - 2)) 
        }
    }
}

fib($n)