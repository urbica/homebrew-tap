class Martin < Formula
  current_version="0.1.0"
  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/urbica/martin"
  url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-darwin-x86_64.zip"
  sha256 "f7eb6871d61c0a20c91aef33a03ca712ada34b4e5eaf88e2cab74491496abbd1"

  def install
    bin.install "martin"
  end

  test do
    `#{bin}/martin --version`
  end
end