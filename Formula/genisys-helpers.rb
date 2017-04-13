class GenisysHelpers < Formula
  VERSION = "1.0.0"

  desc "Helper scripts for managing project-genisys"
  url "git@github.com:octoblu/ops-tools-genisys-helpers.git", :using => :git, :revision => "037e67a"
  sha256 "bbb0214067f7bc7bd0b3ca79210d8af70fbc56fbda5c0cb32a5255bf4ff7feb9"
  depends_on 'jq'

  def install
    #inreplace "genisys-helpers--git", 'directory="$(script_directory)"', ""
    #inreplace "genisys-helpers--git", 'echo "unknown-version"', "echo '#{VERSION}'"

    bin.install "genisys-bootstrap-customer"
    bin.install "genisys-bootstrap-rooms"
    bin.install "genisys-find-devices"
    bin.install "genisys-find-group-devices"
    bin.install "genisys-find-rooms"
    bin.install "genisys-make-errors-device"
    bin.install "genisys-update-connector-versions"
  end

  test do
    assert_equal "#{VERSION}", shell_output("#{bin}/genisys-bootstrap-customer --version").strip
  end
end
