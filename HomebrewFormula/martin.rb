class Martin < Formula
  current_version="0.5.0"

  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/urbica/martin"
  url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-x86_64.tar.gz"
  sha256 "b80a97912e1c084e878dd89e979bfbd2525f8db95efa67b33a0c5b3d34783f29"
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