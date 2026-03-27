class Ready < Formula
  desc "Work management as a campfire convention"
  homepage "https://ready.getcampfire.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/campfire-net/ready/releases/download/v0.1.0/rd_darwin_amd64.tar.gz"
      sha256 "36a827a39fd8080eba873322e4c1c54c56b5e11ec04a536c1985db2d2e1f16f2"
    end

    on_arm do
      url "https://github.com/campfire-net/ready/releases/download/v0.1.0/rd_darwin_arm64.tar.gz"
      sha256 "7549574be6215461f5c9d29389429a73bc67ddbe5c8feeb1ad19a15d5356648a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/campfire-net/ready/releases/download/v0.1.0/rd_linux_amd64.tar.gz"
      sha256 "5c6c986010aa55e017ef5bc5794551d11f49967646c3770f11c9a90b97c90bb9"
    end

    on_arm do
      url "https://github.com/campfire-net/ready/releases/download/v0.1.0/rd_linux_arm64.tar.gz"
      sha256 "0c5cfc8bfcd19db6f932dba93eedabb46798beb0855d30f124723c200d8015f0"
    end
  end

  def install
    bin.install "rd"
  end

  test do
    system "#{bin}/rd", "--help"
  end
end
