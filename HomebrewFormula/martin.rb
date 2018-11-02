class Martin < Formula
  current_version="0.2.0"

  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/urbica/martin"
  url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-darwin-x86_64.zip"
  sha256 "b6ec690359cf9d9714ba014b0950265c14055a937a70d08fcaafd589403d0b12"

  def install
    bin.install "martin"
  end

  test do
    `#{bin}/martin --version`
  end
end