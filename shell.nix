{ pkgs ? import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/be9859e8994910156989cb842a373541fde19bb1.tar.gz";
  }) {}
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.bazel
    pkgs.python2
  ];
}

