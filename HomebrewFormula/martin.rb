class Martin < Formula
  current_version="0.8.1"

  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/urbica/martin"
  url "https://github.com/urbica/martin/archive/refs/tags/v#{current_version}.tar.gz"
  sha256 "95dfa5c600a33118a0e712f17eb76cac2fdcea4fd90a8afff98a3173e763b0cf"
  version "#{current_version}"

  on_macos do
    on_intel do
      url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-x86_64.tar.gz"
      sha256 "554171bc4761c1852f0d6509b16af00d67f2d2b7d78ad20d9f819beb5d967e8a"
    end
    on_arm do
      url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-aarch64.tar.gz"
      sha256 "f4b30b228e747c72f8690b93d0a85a0bad7ea963c0d3e2b475147d94a0ac632c"
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
