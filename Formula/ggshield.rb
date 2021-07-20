class Ggshield < Formula
  include Language::Python::Virtualenv

  desc "Detect secret in source code, scan your repos and docker images for leaks"
  homepage "https://github.com/GitGuardian/ggshield"
  url "https://files.pythonhosted.org/packages/be/29/1d773cf5efc04c1834861494da5b22ef36566bb74c2293523f982a128f30/ggshield-1.7.3.tar.gz"
  sha256 "3d484773789024e308b6a0bca229144954081c082650ac16709a2e806b2f6e9e"
  license "MIT"

  bottle do
    rebuild 1
    sha256 cellar: :any, catalina: "84e0da4618c69736461cc69a3d705a7da8a472a1640f07dff874200bbc9c1795"
  end

  depends_on "python3"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6d/78/f8db8d57f520a54f0b8a438319c342c61c22759d8f9a1cd2e2180b5e5ea9/certifi-2021.5.30.tar.gz"
    sha256 "2bbf76fd432960138b3ef6dda3dde0544f27cbf8546c458e60baf371917ba9ee"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/37/fd/05a04d7e14548474d30d90ad0db5d90ee2ba55cd967511a354cf88b534f1/charset-normalizer-2.0.3.tar.gz"
    sha256 "c46c3ace2d744cfbdebceaa3c19ae691f53ae621b39fd7570f59d14fb7f2fd12"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/21/83/308a74ca1104fe1e3197d31693a7a2db67c2d4e668f20f43a2fca491f9f7/click-8.0.1.tar.gz"
    sha256 "8c04c11192119b1ef78ea049e0a6f0463e4c48ef00a30160c704337586f3ad7a"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cb/38/4c4d00ddfa48abe616d7e572e02a04273603db446975ab46bbcd36552005/idna-3.2.tar.gz"
    sha256 "467fbad99067910785144ce333826c71fb0e63a425657295239737f7ecd125f3"
  end

  resource "marshmallow" do
    url "https://files.pythonhosted.org/packages/bc/98/a0fb5d042908cf787831ae23c5b2c33cc023d52c8e11847a3ebd44f33162/marshmallow-3.12.2.tar.gz"
    sha256 "77368dfedad93c3a041cbbdbce0b33fac1d8608c9e2e2288408a43ce3493d2ff"
  end

  resource "pygitguardian" do
    url "https://files.pythonhosted.org/packages/a8/68/49497c56eb2b52495a0ba60c6dcb26736ee9f7d10db1def722f8d296af54/pygitguardian-1.2.2.tar.gz"
    sha256 "f87c3744d77d236cc83fa54a052fcf82162dfc7c451e081c65f7505cceda6f86"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/7a/1c/4dbbae00fc9a3bc605fc2d92dc0e197fcf0b6e0357d217d1819afe8206af/python-dotenv-0.18.0.tar.gz"
    sha256 "effaac3c1e58d89b3ccb4d04a40dc7ad6e0275fda25fd75ae9d323e2465e202d"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/e7/01/3569e0b535fb2e4a6c384bdbed00c55b9d78b5084e0fb7f4d0bf523d7670/requests-2.26.0.tar.gz"
    sha256 "b8aa58f8cf793ffd8782d3d8cb19e66ef36f7aba4353eec859e74678b01b07a7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/4f/5a/597ef5911cb8919efe4d86206aa8b2658616d676a7088f0825ca08bd7cb8/urllib3-1.26.6.tar.gz"
    sha256 "f57b4c16c62fa2760b7e3d97c35b255512fb6b59a259730f36ba32ce9f8e342f"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
