class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.19/vol"
  sha256 "aff23bee320a644affa2b223ba8524b0ef68aaca0eec2240883e0fa5d62cf664"
  license "MIT"
  version "2.0.19"

  resource "zsh_completion" do
    url "https://github.com/pluttan/volumes/releases/download/v2.0.19/_vol"
    sha256 "777cf012e308916efafacf2659eebf24f7d9c0a30f47f517631a51897978cffb"
  end

  resource "bash_completion" do
    url "https://github.com/pluttan/volumes/releases/download/v2.0.19/vol.bash"
    sha256 "273cf4d4f942a6b7b568af2241077ddc38987a692fbebb5187118c4438441278"
  end

  resource "fish_completion" do
    url "https://github.com/pluttan/volumes/releases/download/v2.0.19/vol.fish"
    sha256 "3006a4fab6cd9920173ede24b39eba383500cffe410019c3a6de1b99a8c8ccfd"
  end

  def install
    bin.install "vol"
    
    resource("zsh_completion").stage do
      zsh_completion.install "_vol"
    end
    
    resource("bash_completion").stage do
      bash_completion.install "vol.bash" => "vol"
    end
    
    resource("fish_completion").stage do
      fish_completion.install "vol.fish"
    end
  end

  test do
    system "#{bin}/vol", "--version"
  end
end
