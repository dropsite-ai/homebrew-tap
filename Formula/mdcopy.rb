# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mdcopy < Formula
  desc "Copies files to the clipboard as markdown."
  homepage "https://github.com/dropsite-ai/mdcopy"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dropsite-ai/mdcopy/releases/download/v1.1.0/mdcopy_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "820927a1452470f68878565fdc0ca6398bc3fc559c5b096f61b89841109ce4b7"

      def install
        bin.install "mdcopy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dropsite-ai/mdcopy/releases/download/v1.1.0/mdcopy_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "689937478da9257e814968e9913995c8463e54359d4f60dd57f3c7103c414626"

      def install
        bin.install "mdcopy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/mdcopy/releases/download/v1.1.0/mdcopy_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "ab845a1321b4ab33cc50d9414c64c26e4f8e234911b0dff05c270ce0eceb52fe"

        def install
          bin.install "mdcopy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/mdcopy/releases/download/v1.1.0/mdcopy_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "35d0a069fb5eb3523a8d9d47898b4504d22f8ac997c3b50540ba5a4792afe8a8"

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
