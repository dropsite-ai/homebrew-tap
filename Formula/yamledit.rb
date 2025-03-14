# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yamledit < Formula
  desc "Lightweight Go package and CLI tool for reading and updating YAML files using dot-notation"
  homepage "https://github.com/dropsite-ai/yamledit"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dropsite-ai/yamledit/releases/download/0.3.0/yamledit_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "7a7725ed834433cffd1269c4bd13cbb343ed66df4bf43dbe1c27622f3a297f8b"

      def install
        bin.install "yamledit"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dropsite-ai/yamledit/releases/download/0.3.0/yamledit_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "10ccbfa2a4ee97f8b587f1a3cc5ae3e9a186089a0ca5dd76c1f011d4b3a0ad84"

      def install
        bin.install "yamledit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/yamledit/releases/download/0.3.0/yamledit_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "bbb3a6319f617196a33e9d822f6081c90577bbb9c906fb2644bea0c11f94d0c6"

        def install
          bin.install "yamledit"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/yamledit/releases/download/0.3.0/yamledit_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "4bff9c9806357e235195bcf67b4481bc4a1ed209e00aca694108183f8bcade3f"

        def install
          bin.install "yamledit"
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
