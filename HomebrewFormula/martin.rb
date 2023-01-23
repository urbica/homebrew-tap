class Martin < Formula
  current_version="0.6.2"

  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/urbica/martin"
  url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-x86_64.tar.gz"
  sha256 "57cc5b94def70ad51ffa499ddb70a31545e26fa3d24865caa139a960994477be"
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
