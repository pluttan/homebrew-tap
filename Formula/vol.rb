class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.9/vol"
  sha256 "382579c0755c208a097f07cfb876920ea107e801054d182f2fff253aac7a5c4a"
  license "MIT"
  version "2.0.9"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
