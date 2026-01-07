class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.19/vol"
  sha256 "aff23bee320a644affa2b223ba8524b0ef68aaca0eec2240883e0fa5d62cf664"
  license "MIT"
  version "2.0.19"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
