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
