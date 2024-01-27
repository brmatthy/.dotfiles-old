# ┌─────────────────────────────────────────────────────────┐
# │░█▀█░▀█▀░█░█░░░░░█▀█░█▀▀░░░░░░░░░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀░│
# │░█░█░░█░░▃▀▃░▀▀▀░█░█░▀▀█░░░░▀░░░░█░░░█░█░█░█░█▀▀░░█░░█░█░│
# │░▀░▀░▀▀▀░▀░▀░░░░░▀▀▀░▀▀▀░░░░▀░░░░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀░│
# │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
# │░░░░░░░░░░░░░░░Brent░Matthys░on░27-01-2024░░░░░░░░░░░░░░░│
# └─────────────────────────────────────────────────────────┘
{ config, pkgs, ... }:

let
  hostName = "thryus";
  userName = "brent"; # as set up during install phase
  locale = "en_GB.UTF-8";
  timeZone = "Europe/Brussels";
in 
{
  imports =
    [
      ./hardware-configuration.nix

      ./hardware/power.nix
      ./hardware/time.nix
      ./hardware/opengl.nix
      ./hardware/printing.nix

      ./wm/hyprland.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable networking
  networking.hostName = hostName;
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = timeZone;

  # Select internationalisation properties.
  i18n.defaultLocale = locale;
  i18n.extraLocaleSettings = {
    LC_ADDRESS = locale;
    LC_IDENTIFICATION = locale;
    LC_MEASUREMENT = locale;
    LC_MONETARY = locale;
    LC_NAME = locale;
    LC_NUMERIC = locale;
    LC_PAPER = locale;
    LC_TELEPHONE = locale;
    LC_TIME = locale;
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "be";
    xkbVariant = "wang";
  };

  # Configure console keymap
  console.keyMap = "be-latin1";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.${userName}= {
    isNormalUser = true;
    description = userName;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    neovim
    zsh
    wget
    git
  ];

  # I use zsh btw
  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;

  fonts.fontDir.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  # hardware
  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
