class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.14/vol"
  sha256 "b311f6218b58d1763fbf982e78b517954cc000466c526119142c7ec77021aaf4"
  license "MIT"
  version "2.0.14"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
