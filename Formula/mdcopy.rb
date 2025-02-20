# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mdcopy < Formula
  desc "Copies files to the clipboard as markdown."
  homepage "https://github.com/dropsite-ai/mdcopy"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dropsite-ai/llmfs/releases/download/v1.0.0/mdcopy_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "2096592f0f6bcad04dc7fd013126afa84ec5d86941fdcdfd7163968f1212987f"

      def install
        bin.install "mdcopy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dropsite-ai/llmfs/releases/download/v1.0.0/mdcopy_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "a292ebaeb20cad38d9f9e8b6a08bf8d9d7fe054a3fc5a811784b990ea9aaa5ee"

      def install
        bin.install "mdcopy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/llmfs/releases/download/v1.0.0/mdcopy_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "289992ffdef2b8eb1ca2ea7a170a7eefb72a1a1255bede58ae845363976d094c"

        def install
          bin.install "mdcopy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/llmfs/releases/download/v1.0.0/mdcopy_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "c22502c89899515977b99abc3e0b5dbe5aa07cb302ab25ccf45a3e9c2ca435cf"

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
