class Veil < Formula
  desc "Opionated caddy module to sell, monitor, authenticate your APIs"
  homepage "https://github.com/try-veil/veil"
  url "https://github.com/try-veil/veil/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "6baed1a6afa555ef464e2b77b4c3ffd8a9fb7cfc3bb68c7bbed5bfd867516bf5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    output = shell_output("#{bin}/veil --version")
    assert_match "veil version", output
  end
end
