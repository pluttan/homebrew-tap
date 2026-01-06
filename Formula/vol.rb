class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.11/vol"
  sha256 "9fa52e8c2b71aa7b092f6db0ddb6ed8100a3f72b006a9d08b86781c0c65ac173"
  license "MIT"
  version "2.0.11"

  def install
    bin.install "vol"
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
