{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs =
    with pkgs;
    with qt6;
    [
      just
      crowdin-cli
      cmake
      qmake
      qttools
      wrapQtAppsHook
      pkg-config
      libclang # for clang-format
      procs # fetches process info
      gawk # for parsing procs output
      fzf # for interactive process selection

      # for ./build-systems/github/build-github-src.sh
      coreutils
      gh

      # for shell scripts
      findutils
      gnused
      ripgrep
      librsvg
      imagemagick
      libicns
    ]
    ++ (
      if pkgs.stdenv.isLinux then
        [
          pkgs.lurk # strace replacement
        ]
      else
        [ ]
    );

  buildInputs =
    with pkgs;
    with qt6;
    [
      qtbase
      qtwebsockets
      qtdeclarative
      qtsvg
      botan2
    ];

  shellHook = ''
    # Determine the repository root
    REPO_ROOT=$(git rev-parse --show-toplevel 2>/dev/null)

    # If we are in the repository root
    if [ "$REPO_ROOT" = "$(pwd)" ]; then
        # Symlink the pre-commit hook into the .git/hooks directory
        ln -sf ../../scripts/pre-commit.sh .git/hooks/pre-commit

        ./scripts/nix-update-qmake-symlinks.sh
    fi
  '';
}
