{ config, pkgs, ... } : {
  imports = [ <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix> ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;

  environment.systemPackages = with pkgs; [
    curl
  ];

  users.users.dtg = {
    isNormalUser  = true;
    home          = "/home/dtg";
    description   = "dtg";
    extraGroups   = [ "wheel" "networkmanager" ];
    # openssh.authorizedKeys.keys  = [ "ssh-dss AAAAB3Nza... alice@foobar" ];
  };
}
