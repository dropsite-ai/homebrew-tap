# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghdownloader < Formula
  desc "Download latest releases from a GitHub repository."
  homepage "https://github.com/dropsite-ai/ghdownloader"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dropsite-ai/ghdownloader/releases/download/1.4.0/ghdownloader_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "b3c276cb967791ae32729e0a7e1f377c2c43e5d7b48ea6b913497ef7c5f3d7f5"

      def install
        bin.install "ghdownloader"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dropsite-ai/ghdownloader/releases/download/1.4.0/ghdownloader_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "3e3c1930203b472537ffdb8db03d7066f3003a2024613294f9f8a3b80b1f3b92"

      def install
        bin.install "ghdownloader"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/ghdownloader/releases/download/1.4.0/ghdownloader_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "012131c69b1b319bc1cfa68b335ff90a24c033b699147230be83efca55dfffc2"

        def install
          bin.install "ghdownloader"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/ghdownloader/releases/download/1.4.0/ghdownloader_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "cfacdcf8a5c5d87c66771d999c67fadfb52301e9959603743b71e2b3b070cfa6"

        def install
          bin.install "ghdownloader"
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
