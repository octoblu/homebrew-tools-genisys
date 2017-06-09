class GenisysHelpers < Formula
  VERSION = "4.3.0"

  desc "Helper scripts for managing project-genisys"
  url "https://github.com/octoblu/ops-tools-genisys-helpers/archive/v#{VERSION}.tar.gz"
  sha256 "37003069137b335c8a3b294aeee70cf1217fd41ffce853425af673d8ce23f93e"
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
