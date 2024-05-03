{ pkgs, ... }:

{
  programs.git.enable = true;
  programs.git.config = {
    url = {
      "https://github.com/" = {
        insteadOf = [
          "gh:"
          "github:"
        ];
      };
    };
    user = {
      "name" = "Pitro979";
      "email" = "pietro.mondino@gmail.com";
    };
  };
}

