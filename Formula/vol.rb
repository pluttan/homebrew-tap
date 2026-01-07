class Vol < Formula
  desc "Universal build tool with beautiful terminal output"
  homepage "https://github.com/pluttan/volumes"
  url "https://github.com/pluttan/volumes/releases/download/v2.0.18/vol"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"
  version "2.0.18"

  resource "zsh_completion" do
    url "https://github.com/pluttan/volumes/releases/download/v2.0.18/_vol"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "bash_completion" do
    url "https://github.com/pluttan/volumes/releases/download/v2.0.18/vol.bash"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  resource "fish_completion" do
    url "https://github.com/pluttan/volumes/releases/download/v2.0.18/vol.fish"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
