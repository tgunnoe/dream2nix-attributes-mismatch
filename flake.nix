{
  inputs.dream2nix.url = "github:nix-community/dream2nix/";
  outputs = { self, dream2nix }@inputs:
    dream2nix.lib.makeFlakeOutputs {
      systems = [ "x86_64-linux" "aarch64-darwin" ];
      config.projectRoot = ./.;
      source = ./.;
    };

}
