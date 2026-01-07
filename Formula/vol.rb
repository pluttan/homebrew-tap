class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.16/vol"
  sha256 "b120a78495983fa6837e70fb4b5df48ef86e8eac377b42fa09e4074b380ea2bf"
  license "MIT"
  version "2.0.16"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
