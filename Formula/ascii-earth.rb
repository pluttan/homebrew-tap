class AsciiEarth < Formula
  desc "Planets, the Moon and the Sun as a live Braille globe in the terminal"
  homepage "https://github.com/pluttan/ascii-earth"
  version "1.2.0"
  license "MIT"

  # One folder per OS and CPU from the release, Python and the maps inside.
  on_macos do
    on_arm do
      url "https://github.com/pluttan/ascii-earth/releases/download/v1.2.0/ascii-earth-darwin-arm64.tar.gz"
      sha256 "1dc353d612776aa73fe3362305429484550460d6a0b80e2026e7d3f4678fe037"
    end
    on_intel do
      url "https://github.com/pluttan/ascii-earth/releases/download/v1.2.0/ascii-earth-darwin-x86_64.tar.gz"
      sha256 "a498a801639577102c7e682487afc409410624fe611184f6afa0ec17cb1bf825"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pluttan/ascii-earth/releases/download/v1.2.0/ascii-earth-linux-arm64.tar.gz"
      sha256 "8db6da833241efa587c35396d7f9275a79a07dd7a202a3778e025d8d68f502f2"
    end
    on_intel do
      url "https://github.com/pluttan/ascii-earth/releases/download/v1.2.0/ascii-earth-linux-x86_64.tar.gz"
      sha256 "8409fcc5f5fb7064173b95cbb5c450f843da83bd9f6195abc49401433a88313d"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"ascii-earth"
  end

  test do
    ENV["COLUMNS"] = "60"
    ENV["LINES"] = "20"
    assert_match "EARTH", shell_output("#{bin}/ascii-earth --color none")
  end
end
