# Growth of a Population
# https://www.codewars.com/kata/growth-of-a-population/python

function nb_year ([int]$p0, [float]$percent, [int]$aug, [int]$p)
{
    
   $year = 0
   while ($p0 -lt $p)
    {
        $p0 += $p0 * $percent/100 + $aug
        $year += 1
    }
    return $year
}

nb_year 1500 5 100 5000  # 15
nb_year 1500000 2.5 10000 2000000  # 10
