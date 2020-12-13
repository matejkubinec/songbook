$result = @{}
$artists = Get-ChildItem -Path '../songs';

foreach ($artist in $artists) {
    $result.Add($artist.Name, @{})

    $songs = Get-ChildItem -Path $artist

    foreach ($song in $songs) {
        $content = Get-Content $song -Raw;
        $result[$artist.Name].Add($song.Name, $content)
    }
}

$result | ConvertTo-Json | Set-Content '../dist/songbook.json';
