class WhatTheTime < Formula
  desc "Insert or inject time calculations between JSON log lines"
  homepage "https://github.com/sdball/what-the-time"
  url "https://github.com/sdball/what-the-time/releases/download/v1.0.0/what-the-time.macos.tar.gz"
  sha256 "5e479f2552a87af707bc866bd7fd7d6cd25d90d4ee857a2ade5afe5107fb7705"
  version "1.0.0"

  def install
    bin.install "wtt"
  end
end