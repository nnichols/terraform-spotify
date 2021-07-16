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

data "spotify_search_track" "terraform" {
  artists = ["Terraform"]
  name    = "Induction"
}

data "spotify_search_track" "hans_zimmer" {
  artists = ["Hans Zimmer"]
  name    = "Terraforming"
}

data "spotify_search_track" "gothic_storm" {
  artists = ["Gothic Storm"]
  name    = "Terraforming"
}

data "spotify_search_track" "justin_e_bell" {
  artists = ["Justin E. Bell"]
  name    = "Terraforming, One Bullet at a Time"
}

data "spotify_search_track" "epic_mountain" {
  artists = ["Epic Mountain"]
  name    = "Terraform Venus"
}

data "spotify_search_track" "kwa_yung" {
  artists = ["Kwa Yung"]
  name    = "Terraform"
}

data "spotify_search_track" "the_dandy_warhols" {
  artists = ["The Dandy Warhols"]
  name    = "Terraform"
}

data "spotify_search_track" "post_haste_music" {
  artists = ["PostHaste Music"]
  name    = "Terraform"
}

data "spotify_search_track" "geotic" {
  artists = ["Geotic"]
  name    = "Terraformer"
}

data "spotify_search_track" "novo_amor" {
  artists = ["Novo Amor"]
  name    = "Terraform"
}

data "spotify_search_track" "deal_casino" {
  artists = ["Deal Casino"]
  name    = "Terraforming"
}

data "spotify_search_track" "mutual_benefit" {
  artists = ["Mutual Benefit"]
  name    = "Terraform"
  album   = "The Space Project"
}

data "spotify_search_track" "thank_you_scientist" {
  artists = ["Thank You Scientist"]
  name    = "FXMLDR"
  album   = "Terraformer"
}

data "spotify_search_track" "wide_eyes" {
  artists = ["Wide Eyes"]
  name    = "Escape Velocity"
  album   = "Terraforming"
}

data "spotify_search_track" "propaganda" {
  artists = ["Propaganda"]
  name    = "We Were Only 10"
  album   = "Terraform: The People"
}

data "spotify_search_track" "the_reclusive_monk" {
  artists = ["The Reclusive Monk"]
  name    = "The End"
  album   = "Petrichor: Terraforming Earth"
}

resource "spotify_playlist" "playlist" {
  name        = "Songs to Terraform to"
  description = "This playlist is managed by Terraform via https://github.com/nnichols/terraform-spotify"
  public      = true

  tracks = [
    data.spotify_search_track.terraform.tracks[0].id,
    data.spotify_search_track.hans_zimmer.tracks[0].id,
    data.spotify_search_track.gothic_storm.tracks[0].id,
    data.spotify_search_track.justin_e_bell.tracks[0].id,
    data.spotify_search_track.epic_mountain.tracks[0].id,
    data.spotify_search_track.kwa_yung.tracks[0].id,
    data.spotify_search_track.the_dandy_warhols.tracks[0].id,
    data.spotify_search_track.post_haste_music.tracks[0].id,
    data.spotify_search_track.geotic.tracks[0].id,
    data.spotify_search_track.novo_amor.tracks[0].id,
    data.spotify_search_track.deal_casino.tracks[0].id,
    data.spotify_search_track.mutual_benefit.tracks[0].id,
    data.spotify_search_track.thank_you_scientist.tracks[0].id,
    data.spotify_search_track.wide_eyes.tracks[0].id,
    data.spotify_search_track.propaganda.tracks[0].id,
    data.spotify_search_track.the_reclusive_monk.tracks[0].id,
  ]
}
