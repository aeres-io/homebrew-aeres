class Aeres < Formula
  desc "AERES client"
  homepage "https://www.aeres.io"
  url "https://github.com/aeres-io/aeres-bin/raw/master/macos/x64/aeres-1.0.4.tar.xz"
  sha256 "9c8674735ba97d0078229febc25923e68675da2ea95e7ff09c9c72f58469a263"
  version "1.0.4"
  depends_on "openssl"
  depends_on "readline"
  depends_on "nss"
  depends_on "nspr"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # system "tar -Jvxf aeres-1.0.4.tar.xz"
    bin.install "bin/aeres"
    lib.install "lib/libquic.dylib"
  end
end
