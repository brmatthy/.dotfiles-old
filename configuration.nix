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

  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
    # base
    wget
    git

    # system
    rofi-wayland
    wayland
    waydroid
    wlr-randr

    # shell
    zsh
    starship
    eza
    neofetch

    # apps
    neovim
    lazygit
    firefox
    kitty
    gnome.nautilus
    gnome.gnome-disk-utility
    gnome.gnome-calculator
    spotify
    spicetify-cli
    discord
    pavucontrol

    # security
    polkit
    polkit_gnome

    # misc
    cups-filters
  ];

  # Enable other programs
  programs = {
    zsh.enable = true;
    dconf.enable = true;
    hyprland = {
      enable = true;
      xwayland = {
        enable = true;
      };
      portalPackage = pkgs.xdg-desktop-portal-hyprland;
    };
  };

  # set zsh as default shell
  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal
      pkgs.xdg-desktop-portal-gtk
    ];
  };
  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };

  # Security
  security = {
    pam.services = {
      swaylock = {
        text = ''
          auth include login
        '';
      };
#     gtklock = {};
      login.enableGnomeKeyring = true;
    };
    rtkit.enable = true;
  };


  # services
  services = {
    gnome.gnome-keyring.enable = true;
    timesyncd.enable = true;
    printing.enable = true;
    dbus = {
      enable = true;
      packages = [ pkgs.dconf ];
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
    xserver = {
      enable = true;
      layout = "be";
      xkbVariant = "wang";
      xkbOptions = "caps:escape";
      displayManager.gdm = {
        enable = true;
        wayland = true;
      };
    };
    tlp = { # power
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "schedutil";

        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

        CPU_MIN_PERF_ON_AC = 0;
        CPU_MAX_PERF_ON_AC = 100;
        CPU_MIN_PERF_ON_BAT = 0;
        CPU_MAX_PERF_ON_BAT = 80;
      };
    };
    avahi = { # printing
      enable = true;
      nssmdns = true;
      openFirewall = true;
    };
  };

  # set fonts
  fonts = {
    fontDir.enable = true;
    fonts =  with pkgs; [
      # Fonts
      (nerdfonts.override { fonts = [ "RobotoMono" "JetBrainsMono" ]; })
    ];
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}
