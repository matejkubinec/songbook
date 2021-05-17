# Write timestamp file
Get-Date -Format 'o' | Set-Content '../dist/timestamp.txt';

# Write songbook file
$songbook = @();
$artists = Get-ChildItem -Path '../songs';

foreach ($artist in $artists) {
    $songs = Get-ChildItem -Path $artist

    foreach ($song in $songs) {
        $content = Get-Content $song -Raw | Out-String
        $songbook += @{
            artist  = $artist.BaseName
            title   = $song.BaseName
            content = $content
        }
    }
}

$songbook | ConvertTo-Json | Set-Content -Path '../dist/songbook.json' -Force;
