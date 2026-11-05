class Luoto < Formula
  desc "Create and manage supply-chain-safe dev sandboxes"
  homepage "https://github.com/eetu/luoto"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eetu/luoto/releases/download/v0.1.0/luoto-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f168e3e49d503c0a78291e52ba01811a4b95666100c20cb0aad99bf92a276a0a"
    end
    on_intel do
      url "https://github.com/eetu/luoto/releases/download/v0.1.0/luoto-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cdd941af52b3dfd5a75d870ed669cd25cca3168c22a2f3ad798cd8720d383e83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eetu/luoto/releases/download/v0.1.0/luoto-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "582e6f84fa7ad2be899cfa0b6ef9201ebee46da747153357cb0e58d8dab58698"
    end
    on_intel do
      url "https://github.com/eetu/luoto/releases/download/v0.1.0/luoto-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "edc060840db0cfaf5cdbb6bd7913cde546e07e8ce7c8b23a42433a5ebef4bd55"
    end
  end

  def install
    bin.install "luoto"
    generate_completions_from_executable(bin/"luoto", shell_parameter_format: :clap)
  end

  def caveats
    <<~EOS
      luoto needs a container runtime: podman or Docker. For podman:
        brew install podman
      Then run:
        luoto setup
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/luoto --version")
  end
end
