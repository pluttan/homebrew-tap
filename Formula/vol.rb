class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.3/vol"
  sha256 "97935ab8312c5605466672b6cb140b61497bc84d63534141b3707fde3f4cd2b1"
  license "MIT"
  version "2.0.3"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
