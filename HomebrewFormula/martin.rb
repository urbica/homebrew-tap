class Martin < Formula
  current_version="0.4.1"

  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/urbica/martin"
  url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-x86_64.tar.gz"
  sha256 "cd46aa74bbf8438ee1c54469b7f79490254126e63e096bf20eb600dec2a91c56"
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