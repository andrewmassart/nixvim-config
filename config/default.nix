{
  imports = [
    ./bufferline.nix
    ./options.nix
    ./nvim-tree.nix
  ];

  colorschemes.catppuccin = {
    enable = true;
    settings = { 
      flavour = "macchiato";
      transparent_background = true;
    };
  };

  plugins = {
    lsp = {
      enable = true;

      servers  = {
        nil-ls.enable = true;
        ts-ls.enable = true;
        lua-ls.enable = true;

        rust-analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
      };
    };

    lualine = {
      enable = true;
      settings.options.theme = "catppuccin";
    };

    web-devicons.enable = true;
    telescope.enable = true;
    oil.enable = true;
    treesitter.enable = true;
    luasnip.enable = true;
  };
}
