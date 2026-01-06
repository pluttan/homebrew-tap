class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.2/vol"
  sha256 "dcc15064ae82e775d3d931934a8fca66551647000aa5e945f1091c53dcf46756"
  license "MIT"
  version "2.0.2"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
