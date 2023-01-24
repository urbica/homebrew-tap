class Martin < Formula
  current_version="0.6.2"

  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/urbica/martin"
  #url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-x86_64.tar.gz"
  url "https://github.com/urbica/martin/archive/refs/tags/v#{current_version}.tar.gz"
  sha256 "ce7ce46ca3006cf7dcad84ef526f3d96934c34211c9c199b79839458f4fa463f"
  version "#{current_version}"

  on_macos do
    on_intel do
      url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-x86_64.tar.gz"
      sha256 "57cc5b94def70ad51ffa499ddb70a31545e26fa3d24865caa139a960994477be"
    end
    on_arm do
      url "https://github.com/urbica/martin/releases/download/v#{current_version}/martin-Darwin-aarch64.tar.gz"
      sha256 "f1d6edfa92ef52f9509cccc167c96caced0f344f78c55976de56aa30dc191114"
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
