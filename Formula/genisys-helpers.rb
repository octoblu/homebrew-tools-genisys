class GenisysHelpers < Formula
  VERSION = "5.0.1"

  desc "Helper scripts for managing project-genisys"
  url "https://github.com/octoblu/ops-tools-genisys-helpers/archive/v#{VERSION}.tar.gz"
  sha256 "c0042f9f697b5da52ddf8c1bfb75a94e287c5ed1b9aca5b3d3e610dad81f3f2d"
  depends_on 'jq'

  def install
    #inreplace "genisys-helpers--git", 'directory="$(script_directory)"', ""
    #inreplace "genisys-helpers--git", 'echo "unknown-version"', "echo '#{VERSION}'"

    bin.install "genisys-bootstrap-customer"
    bin.install "genisys-bootstrap-rooms"
    bin.install "genisys-create-admin"
    bin.install "genisys-create-customer"
    bin.install "genisys-find-room-devices"
    bin.install "genisys-find-customer-devices"
    bin.install "genisys-find-rooms"
    bin.install "genisys-make-errors-device"
    bin.install "genisys-restart-slurries"
    bin.install "genisys-update-connector-versions"
    bin.install "genisys-upsert-customer-monitor-device"
    bin.install "genisys-upsert-room-monitor-device"
  end

  test do
    assert_equal "#{VERSION}", shell_output("#{bin}/genisys-bootstrap-customer --version").strip
  end
end
