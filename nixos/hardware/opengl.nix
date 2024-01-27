{ config, pkgs, ... }:

{
  # OpenGL
  hardware.opengl.enable = true;
  hardware.nvidia.modesetting.enable = true;
}
