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

data "spotify_search_track" "hans_zimmer" {
  artist = "Hans Zimmer"
  name   = "Terraforming"
}

data "spotify_search_track" "gothic_storm" {
  artist = "Gothic Storm"
  name   = "Terraforming"
}

data "spotify_search_track" "justin_e_bell" {
  artist = "Justin E. Bell"
  name   = "Terraforming, One Bullet at a Time"
}

data "spotify_search_track" "epic_mountain" {
  artist = "Epic Mountain"
  name   = "Terraform Venus"
}

data "spotify_search_track" "kwa_yung" {
  artist = "Kwa Yung"
  name   = "Terraform"
}

data "spotify_search_track" "the_dandy_warhols" {
  artist = "The Dandy Warhols"
  name   = "Terraform"
}

data "spotify_search_track" "post_haste_music" {
  artist = "PostHaste Music"
  name   = "Terraform"
}

data "spotify_search_track" "geotic" {
  artist = "Geotic"
  name   = "Terraformer"
}

data "spotify_search_track" "novo_amor" {
  artist = "Novo Amor"
  name   = "Terraform"
}

data "spotify_search_track" "deal_casino" {
  artist = "Deal Casino"
  name   = "Terraforming"
}

data "spotify_search_track" "mutual_benefit" {
  artist = "Mutual Benefit"
  name   = "Terraform"
  album  = "The Space Project"
}

data "spotify_search_track" "thank_you_scientist" {
  artist = "Thank You Scientist"
  name   = "FXMLDR"
  album  = "Terraformer"
}

data "spotify_search_track" "wide_eyes" {
  artist = "Wide Eyes"
  name   = "Escape Velocity"
  album  = "Terraforming"
}

data "spotify_search_track" "propaganda" {
  artist = "Propaganda"
  name   = "We Were Only 10"
  album  = "Terraform: The People"
}

data "spotify_search_track" "the_reclusive_monk" {
  artist = "The Reclusive Monk"
  name   = "The End"
  album  = "Petrichor: Terraforming Earth"
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
