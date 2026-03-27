class Ready < Formula
  desc "Work management as a campfire convention"
  homepage "https://ready.getcampfire.dev"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/campfire-net/ready/releases/download/v0.2.0/rd_darwin_amd64.tar.gz"
      sha256 "9a22c6781dabb1e5328d8f073f2225a063b4d41a6b0e01284d50cb7e5e01d016"
    end

    on_arm do
      url "https://github.com/campfire-net/ready/releases/download/v0.2.0/rd_darwin_arm64.tar.gz"
      sha256 "6355d7bf8cc276708d153cb221db5a44b50ab5d8008138fa346d2f5608d7c482"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/campfire-net/ready/releases/download/v0.2.0/rd_linux_amd64.tar.gz"
      sha256 "9f3242fc2ece3c93f4da97c929c36dc8e94107a2630b5248597fe6d32ddac194"
    end

    on_arm do
      url "https://github.com/campfire-net/ready/releases/download/v0.2.0/rd_linux_arm64.tar.gz"
      sha256 "fc90141ca366ebd63148775724ec541b8a8ac91e04910f975e701beda9467e00"
    end
  end

  def install
    bin.install "rd"
  end

  test do
    system "#{bin}/rd", "--help"
  end
end
