require "language/node"

class Galton < Formula
  current_version="5.19.0-beta.0"

  desc "Lightweight Node.js isochrone server"
  homepage "https://github.com/urbica/galton"
  url "https://registry.npmjs.org/galton/-/galton-#{current_version}.tgz"
  sha256 "5c9497546678b0fa8f80b0ece6ad3a4bd0bd948f50c175eb4ac5fb1d7117c4a8"

  depends_on "node@8"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    `#{bin}/galton --version`
  end
end