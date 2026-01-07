class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.21/vol"
  sha256 "14c86a7c0d556e8ab8079f296fe993e753106e8aa486a453391f6e09dbb97822"
  license "MIT"
  version "2.0.21"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
