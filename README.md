# Terraform Spotify

An example of Terraform's Spotify provider, from [the Spotify tutorial](https://learn.hashicorp.com/tutorials/terraform/spotify-playlist)

## Usage

Prior to execution, run the Spotify Auth Proxy image:

```bash
docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy
```

Follow the `Auth:` link to authorize Terraform against Spotify, and then copy the `APIKey` into a `terraform.tfvars` file:

```hcl
spotify_api_key = "SOME LONG SECRET KEY"
```

After that, apply the terraform and rock out.

```bash
$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions
are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # spotify_playlist.playlist will be created
  + resource "spotify_playlist" "playlist" {
      + description = "This playlist is managed by Terraform via https://github.com/nnichols/terraform-spotify"
      + id          = (known after apply)
      + name        = "Songs to Terraform to"
      + public      = true
      + snapshot_id = (known after apply)
      + tracks      = [
          + "3VoIGEd6KW2whXqHQWCbWS",
          + "6B1PfbxffDXLyyDTBIE5cp",
          + "6P3eymlVtitV31GqV8usDO",
        ]
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + playlist_url = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

spotify_playlist.playlist: Creating...
spotify_playlist.playlist: Creation complete after 1s [id=5LZFjKNIaQ3yqTzc1V2hjS]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

playlist_url = "https://open.spotify.com/playlist/5LZFjKNIaQ3yqTzc1V2hjS"
```
