class Embd < Formula
  desc "CLI tool for embedding a git repo into another"
  homepage "https://github.com/ptsouchlos/embd"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ptsouchlos/embd/releases/download/v#{version}/embd-aarch64-apple-darwin.tar.gz"
      sha256 "c7182c012b0acf3d57816e222993496ba0d6bb7104d99f3fc176f36edc5b8c1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ptsouchlos/embd/releases/download/v#{version}/embd-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6362b93db339d4b0aed909d0e270383cb8410105c463c965886440fe6f2fd54a"
    end

    on_intel do
      url "https://github.com/ptsouchlos/embd/releases/download/v#{version}/embd-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88aff7903d3ca3706505706af8ca5b09da46f4c6fb47dd938d6fde007e6ea015"
    end
  end

  def install
    bin.install "embd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/embd --version")
  end
end
