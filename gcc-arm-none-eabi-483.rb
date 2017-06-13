# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

require 'formula'

class GccArmNoneEabi483 < Formula
  desc "arm-none-eabi 4.8.3 20131129"
  homepage "https://launchpad.net/gcc-arm-embedded"
  url "https://launchpad.net/gcc-arm-embedded/4.8/4.8-2013-q4-major/+download/gcc-arm-none-eabi-4_8-2013q4-20131218-mac.tar.bz2"
  sha256 "1f158f2fd0ca14ff22933693dc5b4047b95663b070725313d1a9f7c9ede0ff82"

  def install
    ohai 'Copying binaries...'
    system 'cp', '-rv', 'arm-none-eabi', 'bin', 'lib', 'share', "#{prefix}/"
  end
end
