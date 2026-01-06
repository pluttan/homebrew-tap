class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.10/vol"
  sha256 "f7100269cefb4e358be897f8f01ab192bfcdfa287b3a968c8f9032133149d34c"
  license "MIT"
  version "2.0.10"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
