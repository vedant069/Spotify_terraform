resource "spotify_playlist" "hehehe" {
    name = "heheheh"
    tracks = ["49X0LAl6faAusYq02PRAY6"]
  
}

data "spotify_search_track" "TameImpala" {
    artist = "Tame Impala"
  
}

resource "spotify_playlist" "gato" {
    name = "Gatoo"
    tracks = [ data.spotify_search_track.TameImpala.tracks[0].id,
    data.spotify_search_track.TameImpala.tracks[1].id,
    data.spotify_search_track.TameImpala.tracks[2].id,
    data.spotify_search_track.TameImpala.tracks[3].id ]
  
}