class Funterm < Formula
  desc "Command-line fun things to run in the terminal"
  homepage "https://github.com/sdball/funterm"
  url "https://github.com/sdball/funterm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "71b4220a739b2073dc2ecd2a76ceddb4b3206e01ec0983166dbb266c2a81455b"
  license "MIT"
  version "0.1.0"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=homebrew
      -X main.date=#{Time.now.utc.strftime("%Y-%m-%d")}
    ]

    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funterm --version")
  end
end
