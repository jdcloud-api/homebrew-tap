require 'formula'

class LibjdcloudSigner < Formula
  head 'https://github.com/jdcloud-api/jdcloud-sdk-cpp-signer.git'
  homepage 'https://github.com/jdcloud-api/jdcloud-sdk-cpp-signer'
  # url 'https://github.com/iptux-src/iptux/archive/v0.7.5.tar.gz'
  # sha256 '37fd2618e888d44b3ddcc21e2d497f0a8dcbdb2adcb23fd137fb8e56d2d46919'

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
