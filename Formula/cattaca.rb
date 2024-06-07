class Cattaca < Formula
  desc "Output a requested number of random lines from a given file or STDIN"
  homepage "https://github.com/sdball/cattaca"
  url "https://github.com/sdball/cattaca/releases/download/v1.0.0/cattaca-macos.tar.gz"
  sha256 "43dce04a244dc75b2f9d86be1d9153599232bcbc834b5bfb4dca2e8bd3066490"
  version "1.0.0"

  def install
    bin.install "cattaca"
  end
end