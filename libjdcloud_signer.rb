require 'formula'

class LibjdcloudSigner < Formula
  head 'https://github.com/jdcloud-api/jdcloud-sdk-cpp-signer.git'
  homepage 'https://github.com/jdcloud-api/jdcloud-sdk-cpp-signer'
  url 'https://github.com/jdcloud-api/jdcloud-sdk-cpp-signer/archive/v0.2.0.tar.gz'
  sha256 'f78ac6cfc8bdf539eaca11f13966671e38749feb46abac57db36bb24a8d12e36'

  depends_on 'openssl'
  depends_on 'cmake' => :build
  unless OS.mac?
    depends_on "libuuid"
  end

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX:PATH=#{prefix}", "."
    system "make", "install"
  end
end
