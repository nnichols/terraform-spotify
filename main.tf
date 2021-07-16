terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.5"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

data "spotify_search_track" "hans_zimmer" {
  artists = ["Hans Zimmer"]
  name    = "Terraforming"
}

data "spotify_search_track" "post_haste_music" {
  artists = ["PostHaste Music"]
  name    = "Terraform"
}

data "spotify_search_track" "thank_you_scientist" {
  artists = ["Thank You Scientist"]
  name    = "FXMLDR"
  album   = "Terraformer"
}

resource "spotify_playlist" "playlist" {
  name        = "Songs to Terraform to"
  description = "This playlist is managed by Terraform via https://github.com/nnichols/terraform-spotify"
  public      = true

  tracks = [
    data.spotify_search_track.hans_zimmer.tracks[0].id,
    data.spotify_search_track.post_haste_music.tracks[0].id,
    data.spotify_search_track.thank_you_scientist.tracks[0].id
  ]
}
