class Kubekick < Formula
  desc "One-off tasks and encrypted secrets CLI for Kubernetes"
  homepage "https://github.com/rzane/kubekick"

  version "0.1.1"
  url "https://github.com/rzane/kubekick/releases/download/v0.1.1/kubekick-0.1.1_darwin_x86_64.tar.gz"
  sha256 "c3ba5bc846c503cd9ad51f404fa1b284acd226d004104090bd16c2a574834076"

  def install
    bin.install "kubekick"
  end

  test do
    cmd = "echo '{{check}}' | #{bin}/kubekick template -f - check=pass"
    assert_equal "pass", shell_output(cmd).chomp
  end
end
