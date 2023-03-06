class Martin < Formula
  current_version="0.7.2"

  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/urbica/martin"
  #url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-x86_64.tar.gz"
  url "https://github.com/urbica/martin/archive/refs/tags/v#{current_version}.tar.gz"
  sha256 "6072b05812fe444788db236513b43974c340c02ca97a43efac7d193c57a15be0"
  version "#{current_version}"

  on_macos do
    on_intel do
      url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-x86_64.tar.gz"
      sha256 "82aba9100a2d58ca40edf6ebd75199f62b24eff845115b8cb503d706a0529326"
    end
    on_arm do
      url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-aarch64.tar.gz"
      sha256 "58326f116bfa331dee6062a80f68364ddfedcf36412fe144fd0578d8f0a7a386"
    end
  end

  def install
    bin.install "martin"
  end

  def caveats; <<~EOS
    Martin requires a database connection string.
    It can be passed as a command-line argument or as a DATABASE_URL environment variable.

      martin postgres://postgres@localhost/db
  EOS
  end

  test do
    `#{bin}/martin --version`
  end
end
