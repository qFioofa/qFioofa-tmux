{
  description = "qFioofa tmux config — Home Manager module";

  # See scripts/deploy.sh: src/ is the config root, target is ~/.config/tmux.
  outputs = { self }: {
    homeManagerModules.default = { config, lib, pkgs, ... }: {
      xdg.configFile."tmux" = {
        recursive = true;
        source = ./src;
      };
    };
  };
}
