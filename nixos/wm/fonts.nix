{ config, pkgs, ... }:

{
  # Fonts are nice to have
  fonts.fonts = with pkgs; [
    # Fonts
    (nerdfonts.override { fonts = [ "RobotoMono" "JetBrainsMono" ]; })
  ];

}
