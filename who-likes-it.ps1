function likes([array]$names)
{
     
    switch(($names.Length, 4 | Measure-Object -Minimum).Minimum)
    {
        0 { $out = "no one likes this" }
        1 { $out = "$names likes this" }
        2 { $out = "{0} and {1} like this" -f $names[0], $names[1]}
        3 { $out = "{0}, {1} and {2} like this" -f $names[0], $names[1], $names[2] }
        4 { $out = "{0}, {1} and {2} others like this" -f $names[0], $names[1], ($names.Length-2).ToString() }
    }
    return $out
}

likes @()
likes @("alice")
likes @("alice","bob")
likes @("alice","bob","charlie")
likes @("alice","bob","charlie","dan")
