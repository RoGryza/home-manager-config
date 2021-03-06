{
  rogryza = { pkgs, ... }: {
    imports = [ ./home.nix ];

    home.keyboard.layout = "br";
    services.gpg-agent.sshKeys = [ "8D9342B7F994DE2B879A03F4CF270B470301BE9C" ];
    programs.scrot.enable = true;
    programs.passff-host.enable = true;
    programs.tridactyl.enable = true;
  };
  rogryza-tl = { pkgs, ... }: {
    imports = [ ./home.nix ];

    home.keyboard.layout = "us,us";
    home.keyboard.variant = ",intl";
    home.keyboard.options = [ "grp:caps_toggle" ];

    home.packages = with pkgs; [ kubectl rustup slack ];
    xsession.programs.browser = [ "/usr/bin/google-chrome-stable" ];
    programs.zsh.profileExtra = ''export PATH="$HOME/bin:$PATH"'';
    services.gpg-agent.sshKeys = [
      "6199884D574FA800EE6D72D4F151EBBC6B3B8192"
      "71014621DE5C3BFFE7C014193FE1FA377AE40438"
    ];
    programs.git.userName = "Rodrigo Gryzinski";
    programs.git.userEmail = "rodrigo.gryzinski@truelayer,com";
    programs.git.extraConfig = {
      user.signingKey = "rodrigo.gryzinski@truelayer.com";
      credentials.helper = "store";
    };
    me.kubernetes.enable = true;
  };
  rogryza-tl-p = { lib, pkgs, ... }: {
    imports = [ ./home.nix ];

    home.keyboard.layout = "us,us";
    home.keyboard.variant = ",intl";
    home.keyboard.options = [ "grp:caps_toggle" ];

    programs.git.userName = "Rodrigo Gryzinski";
    programs.git.userEmail = "rogryza@gmail.com";
    programs.git.extraConfig = {
      pull.ff = false;
    };

    programs.passff-host.enable = true;
    programs.tridactyl.enable = true;
  };
}
