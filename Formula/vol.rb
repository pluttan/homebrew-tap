class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.18/vol"
  sha256 "02fcd77be5dcd82f4148142956fead9914fa8ac572f5ed630010339a0eff4698"
  license "MIT"
  version "2.0.18"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
