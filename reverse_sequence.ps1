param([Int]$number)
$revSeq = @($number)
do
{
    $revSeq += $revSeq[-1]-1;
    
} while ($revSeq[-1] -gt 1)

Write-Host $revSeq