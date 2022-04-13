
class AwsProfileGpg < Formula
  include Language::Python::Virtualenv

  desc "Run aws-cli commands using IAM Access Keys stored in a GPG encrypted credentials file"
  homepage "https://github.com/jefforulez/aws-profile-gpg"

  version "1.0.0"

  url "https://github.com/jefforulez/aws-profile-gpg/archive/refs/tags/1.0.0.tar.gz"
  sha256 "7e3cf4a7893eafd7265817460c5fee008c780b2add762495e49890be908a0372"

  head "https://github.com/jefforulez/aws-profile-gpg.git"

  depends_on "python@3"
  depends_on "gpgme"

  resource "pygpgme" do
    url "https://files.pythonhosted.org/packages/dc/96/b2bcbd3a216af313bb9045c2e573aa18653876a65db471b86be7598234dd/pygpgme-0.3.tar.gz"
    sha256 "5fd887c407015296a8fd3f4b867fe0fcca3179de97ccde90449853a3dfb802e1"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/dc/c3/6ed2dfad4808747462cf07f0cbd084e9385e64eeef9eb43be87a0187c3fc/botocore-1.24.39.tar.gz"
    sha256 "a0883dfe8b81689060af7bb2ca4ce3048b954b25bef4ed712c6760ce3da51485"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/06/7e/44686b986ef9ca6069db224651baaa8300b93af2a085a5b135997bf659b3/jmespath-1.0.0.tar.gz"
    sha256 "a490e280edd1f57d6de88636992d05b71e97d69a26a19f058ecf7d304474bf5e"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/1b/a5/4eab74853625505725cefdf168f48661b2cd04e7843ab836f3f63abf81da/urllib3-1.26.9.tar.gz"
    sha256 "aabaf16477806a5e1dd19aa41f8c2b7950dd3c746362d7e3223dbe6de6ac448e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "true"
  end

end
