# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mdcopy < Formula
  desc "Copies files to the clipboard as markdown."
  homepage "https://github.com/dropsite-ai/mdcopy"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dropsite-ai/mdcopy/releases/download/v2.0.0/mdcopy_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "5b09dc3ff39a45f5273f1bc7090db238405af1eb6892ee6a90e28bed2ccc8721"

      def install
        bin.install "mdcopy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dropsite-ai/mdcopy/releases/download/v2.0.0/mdcopy_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "f85d212cd569c5c37a64f9124b701cdea5e7df538f31a64f94da22af94f2ac43"

      def install
        bin.install "mdcopy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/mdcopy/releases/download/v2.0.0/mdcopy_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "be74d207083fa3481df78c7612cbaab5221149bc5c3a586cee283ae2dbfd296f"

        def install
          bin.install "mdcopy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/mdcopy/releases/download/v2.0.0/mdcopy_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "6fb8a83af903d15f74ef975a37e1ec98f4a627bdcff4754919580b77557dd048"

        def install
          bin.install "mdcopy"
        end
      end
    end
  end

  def caveats
    <<~EOS
      For usage instructions, please refer to the project's README.
    EOS
  end
end
