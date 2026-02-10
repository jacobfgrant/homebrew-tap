class UnityRearm < Formula
  include Language::Python::Virtualenv

  desc "Convert x86_64-only Unity macOS games to native ARM64 on Apple Silicon"
  homepage "https://github.com/jacobfgrant/unity-rearm"
  url "https://github.com/jacobfgrant/unity-rearm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c8a295d5f62cdebc6c6855bb2da9c9441cc221a247e82d8310958a5f51c6b31f"
  license "Apache-2.0"

  depends_on "python@3.13"
  depends_on :macos

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "unity-rearm #{version}", shell_output("#{bin}/unity-rearm --version")
  end
end
