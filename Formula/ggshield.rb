class Ggshield < Formula
  include Language::Python::Virtualenv

  desc "Detect secret in source code, scan your repos and docker images for leaks"
  homepage "https://github.com/GitGuardian/gg-shield"
  url "https://files.pythonhosted.org/packages/6a/94/26017dc449e5a3a96bf30de082a0d31993cffdf0299402510f21b25c15ec/ggshield-1.7.0.tar.gz"
  sha256 "77e0c08084e452125f6731fa21930da059f412e65bfcf553ca751320f1e6bd91"
  license "MIT"

  bottle do
    root_url "https://github.com/GitGuardian/homebrew-ggshield/releases/download/v1.7.0"
    rebuild 1
    sha256 cellar: :any, catalina: "c5820afbe592bc6b4ffb15f153f39e2e679e90f15de971260d3d1d8028d8c0c7"
  end

  depends_on "python3"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6d/78/f8db8d57f520a54f0b8a438319c342c61c22759d8f9a1cd2e2180b5e5ea9/certifi-2021.5.30.tar.gz"
    sha256 "2bbf76fd432960138b3ef6dda3dde0544f27cbf8546c458e60baf371917ba9ee"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz"
    sha256 "0d6f53a15db4120f2b08c94f11e7d93d2c911ee118b6b30a04ec3ee8310179fa"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/21/83/308a74ca1104fe1e3197d31693a7a2db67c2d4e668f20f43a2fca491f9f7/click-8.0.1.tar.gz"
    sha256 "8c04c11192119b1ef78ea049e0a6f0463e4c48ef00a30160c704337586f3ad7a"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "marshmallow" do
    url "https://files.pythonhosted.org/packages/55/89/32da3b04e975c9a4b9b9ef191be923671a7d5aa8660acc8bdbe996ec774a/marshmallow-3.12.1.tar.gz"
    sha256 "8050475b70470cc58f4441ee92375db611792ba39ca1ad41d39cad193ea9e040"
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
    url "https://files.pythonhosted.org/packages/6b/47/c14abc08432ab22dc18b9892252efaf005ab44066de871e72a38d6af464b/requests-2.25.1.tar.gz"
    sha256 "27973dd4a904a4f13b263a19c866c13b92a39ed1c964655f025f3f8d3d75b804"
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
