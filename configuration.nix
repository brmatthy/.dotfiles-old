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
    cups-filters
    wayland
    waydroid
    firefox
    rofi-wayland

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

  services.timesyncd.enable = true;
  services.tlp = {
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

  # Enable printing
  services.printing.enable = true;
  services.avahi.enable = true;
  services.avahi.nssmdns = true;
  services.avahi.openFirewall = true;

  # OpenGL
  hardware.opengl.enable = true;
  hardware.nvidia.modesetting.enable = true;

  # Security
  security = {
    pam.services.swaylock = {
      text = ''
        auth include login
      '';
    };
#    pam.services.gtklock = {};
    pam.services.login.enableGnomeKeyring = true;
  };

  services.gnome.gnome-keyring.enable = true;

  programs = {
    hyprland = {
      enable = true;
      xwayland = {
        enable = true;
      };
      portalPackage = pkgs.xdg-desktop-portal-hyprland;
    };
  };

  # Pipewire
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };


  # Configure xwayland
  services.xserver = {
    enable = true;
    layout = "be";
    xkbVariant = "wang";
    xkbOptions = "caps:escape";
    displayManager.gdm = {
      enable = true;
      wayland = true;
    };
  };

  services.dbus = {
    enable = true;
    packages = [ pkgs.dconf ];
  };

  programs.dconf = {
    enable = true;
  };

  services.gnome = {
    gnome-keyring.enable = true;
  };

  # Fonts are nice to have
  fonts.fonts = with pkgs; [
    # Fonts
    (nerdfonts.override { fonts = [ "RobotoMono" "JetBrainsMono" ]; })
  ];


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
