Download `configuration.nix` to the right location

```shell
sudo curl --location --silent \
  https://raw.githubusercontent.com/dtgoitia/nixos/main/configuration.nix \
  --output /etc/nixos/configuration.nix

sudo nixos-rebuild switch
```
