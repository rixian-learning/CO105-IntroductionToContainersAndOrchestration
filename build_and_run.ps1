param (
    [Parameter(Mandatory=$true)][string]$lab
)

Push-Location $lab

docker kill $lab
docker rm $lab

docker build -t $lab .

$num = $lab.Substring(4, 2);
$i = [System.Int32]::Parse($num);
$port = 8720 + $i;

docker run --rm -p ($port):80 --name $lab $lab

Pop-Location