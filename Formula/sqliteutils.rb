# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqliteutils < Formula
  desc "Pooling, querying, backup, and testing utilities for [zombiezen/go-sqlite](/zombiezen/go-sqlite)."
  homepage "https://github.com/dropsite-ai/sqliteutils"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dropsite-ai/sqliteutils/releases/download/1.0.0/sqliteutils_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "214668e551e09b376c6dcbc9e4917dd71bc7c8d2309dd1fbe518705e7204a89f"

      def install
        bin.install "sqliteutils"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dropsite-ai/sqliteutils/releases/download/1.0.0/sqliteutils_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream"
        ]
      sha256 "de231b02b47aa2954d6264f7e1578dc9923c1135f640fcaeec4571310d9caad7"

      def install
        bin.install "sqliteutils"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/sqliteutils/releases/download/1.0.0/sqliteutils_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "8a869c894e9d41c55c30c1fd7dade418c274024c0dfa8b63ce22f8dfd42bbe19"

        def install
          bin.install "sqliteutils"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dropsite-ai/sqliteutils/releases/download/1.0.0/sqliteutils_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream"
          ]
        sha256 "08563831c4456441d345cf34c8df7b10761f2b4f2f09660e4471323d3c44a7ff"

        def install
          bin.install "sqliteutils"
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
