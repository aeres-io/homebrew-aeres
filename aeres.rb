class Aeres < Formula
  desc "Aeres binary installer"
  homepage "https://aereslab.com"
  url "https://github.com/aeres-io/aeres-bin/archive/v1.0.2.tar.gz"
  sha256 "18d7ec8549e1c720e92859364928da04b1e4f5491a3281ffed54c9aff87600bc"

  depends_on "openssl"
  depends_on "nss"
  depends_on "nsps"

  def install
    bin.install "aeres"
    lib.install "libquic.dylib"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test aeres-bin`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
