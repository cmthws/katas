# Vowel Count
# https://www.codewars.com/kata/vowel-count/python

function getCount {
	param( [string]$inputStr )
	$num_vowels = 0

	foreach ($l in $inputStr.ToCharArray()) {
		if ("aeiou".Contains($l)) {
			$num_vowels = $num_vowels + 1
		}
	}
    return $num_vowels
}

getCount("abrecidobru") | Write-Host