# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghdownloader < Formula
  desc "Download latest releases from a GitHub repository."
  homepage "https://github.com/dropsite-ai/ghdownloader"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dropsite-ai/ghdownloader/releases/download/1.3.0/ghdownloader_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "bfced938c383b49fc459e52c45fed30c4f4534d1dec41e34e124504c06387335"

      def install
        bin.install "ghdownloader"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dropsite-ai/ghdownloader/releases/download/1.3.0/ghdownloader_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "94211c6da6a5f3490c00f931f772ba67ad99eebd27330381ec71b062cede728b"

      def install
        bin.install "ghdownloader"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/ghdownloader/releases/download/1.3.0/ghdownloader_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "dfa696fddcd19c75c7de66f957580760240c9b0c1fb263b6fa302f56d357f09e"

        def install
          bin.install "ghdownloader"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/ghdownloader/releases/download/1.3.0/ghdownloader_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "74dfa486360d6e7016dfd4aaa05903e548ace8c66aee9ec26dc5c33564873027"

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
