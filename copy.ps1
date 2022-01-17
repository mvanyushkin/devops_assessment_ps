if ($args.Count -ne 3) {
    Write-Host "Invalid arguments count, the format is: copy.ps1 searchText src dst "
}

$searchText = $args[0];
$src = $args[1];
$dst = $args[2];


Get-ChildItem -Path $src -Recurse | Select-String $searchText -List | Select Path | Copy-Item -Destination $dst