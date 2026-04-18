class VaultAi < Formula
  desc "An AI-native, human-centric Version Control System"
  homepage "https://sathvik0548.github.io/vault-ai/"
  version "0.1.0-alpha"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sathvik0548/vault-ai/releases/download/v0.1.0-alpha/vault-ai-macos-arm64"
    sha256 :no_check
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sathvik0548/vault-ai/releases/download/v0.1.0-alpha/vault-ai-macos-intel"
    sha256 :no_check
  elsif OS.linux?
    url "https://github.com/sathvik0548/vault-ai/releases/download/v0.1.0-alpha/vault-ai-linux-x64"
    sha256 :no_check
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "vault-ai-macos-arm64" => "vault-ai"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "vault-ai-macos-intel" => "vault-ai"
    else
      bin.install "vault-ai-linux-x64" => "vault-ai"
    end
  end
end
