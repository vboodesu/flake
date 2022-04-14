{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "vboob";
  home.homeDirectory = "/home/vboob";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

imports = [

];

home.packages = with pkgs; [
   #alacritty 
   kitty
   neofetch
   pipewire
   pipewire-media-session
   dbus
   pavucontrol
   xorg.xinit
   pciutils
   gparted
   steam
   mesa
   libGL
   discord
#   libGL_driver
   woeusb
   git
   obs-studio
   gnome.nautilus
   dmenu
#   inputs.nix-gaming.packages.x86_64-linux.osu-stable
    nordic
    lxappearance
    polybar
    meson  
    ninja  
    picom
    nitrogen  
    gruvbox-dark-gtk 
   xorg.xf86videofbdev
   droidcam 
   dolphin
   pcmanfm
   legendary-gl
   git-crypt
   gnupg
   nano
];


nixpkgs = {
  config = {
    allowUnfree = true;
  };
};


programs.gpg = { 
 enable = true;
};

services.gpg-agent = {
 enable = true;
 pinentryFlavor = "qt";
};

programs.neovim = { 
enable = true;
vimAlias = false;
plugins = [
      pkgs.vimPlugins.vim-nix
 ];
};

# Kitty
home.file = { 
   ".config/kitty/kitty.conf".text = '' 
    include ./nord.conf

# font_family      Input Mono 
font_family      Fantasque Sans Mono 
italic_font      auto 
bold_font        auto 
bold_italic_font auto 

# Font size (in pts) 
font_size        18.0 


    '';

  };
}
