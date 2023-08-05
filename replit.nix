{ pkgs }: {
  deps = [
    pkgs.wget
    pkgs.graalvm17-ce
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}
