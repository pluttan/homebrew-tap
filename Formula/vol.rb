class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.12/vol"
  sha256 "6997786ba5a415fbfa814a89e815890e1a4b8089c31b3df306944a63b267b716"
  license "MIT"
  version "2.0.12"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
