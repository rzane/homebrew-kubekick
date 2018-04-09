class Kubekick < Formula
  desc "One-off tasks and encrypted secrets CLI for Kubernetes"
  homepage "https://github.com/rzane/kubekick"

  version "1.0.0"
  url "https://github.com/rzane/kubekick/releases/download/v1.0.0/kubekick-1.0.0_darwin_x86_64.tar.gz"
  sha256 "ee03f9734b6da3a4284c95cb4f42fa6b3232e2679e1eb20d7bfa3655532269ab"

  def install
    bin.install "kubekick"
  end

  test do
    cmd = "echo '{{check}}' | #{bin}/kubekick template -f - check=pass"
    assert_equal "pass", shell_output(cmd).chomp
  end
end
