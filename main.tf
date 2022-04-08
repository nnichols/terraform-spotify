terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.5"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

data "spotify_search_track" "terraform" {
  artist = "Terraform"
  name   = "Induction"
}

resource "spotify_playlist" "playlist" {
  name        = "JoJo's Bizarre Playlist"
  description = "Every song/artist referenced by JoJo's Bizarre Adventure. This playlist is managed by Terraform. To request updates or changes, please visit <<GITHUB LINK>>"
  public      = true

  tracks = [
    data.spotify_search_track.terraform.tracks[0].id
  ]
}
