# Remove String Spaces
# https://www.codewars.com/kata/57eae20f5500ad98e50002c5

function no_space([string]$x)
{
    $x.Replace(" ", "")
}

no_space("x a")
no_space("asdjfk 2332 ad 3j  ad9  3   3mmm a")
no_space("12j 3j    3 afld   lakf  0")
