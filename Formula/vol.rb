class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.0/vol"
  sha256 "b282b4dd6423a03c97e45adb8f12a5858d52218f9df150a7f860e0021f98cbed"
  license "MIT"
  version "2.0.0"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
