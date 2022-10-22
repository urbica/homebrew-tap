class Martin < Formula
  current_version="0.6.0-rc.3"

  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/maplibre/martin"
  url "https://github.com/maplibre/martin/releases/download/v#{current_version}/martin-Darwin-x86_64.tar.gz"
  sha256 "c7e98e78997698d7d29e7cd8c4c33ad31f0504a275a5f5bc36c40fae5c5cc965"
  version "#{current_version}"

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