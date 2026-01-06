class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.5/vol"
  sha256 "c52ebf0bd87a1e9f4609d6dbf16cf29fde77ed0fe88c5d1a337d939eaf5baf5c"
  license "MIT"
  version "2.0.5"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
