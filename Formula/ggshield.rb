class Ggshield < Formula
  include Language::Python::Virtualenv

  desc "Detect secret in source code, scan your repos and docker images for leaks"
  homepage "https://github.com/GitGuardian/gg-shield"
  url "https://files.pythonhosted.org/packages/a0/1f/d1e46163a98930e5ba2a9df6492ac16c7553050e6de25574153c5075ba3a/ggshield-1.6.1.tar.gz"
  sha256 "4389fb963aa695ccd1b79c94751c7d15b88bc09533db2a8edae19725a8afa62b"
  license "MIT"

  bottle do
    root_url "https://github.com/GitGuardian/homebrew-ggshield/releases/download/v1.6.1"
    sha256 cellar: :any, catalina: "e37d796a366cf6d4330e71a400e343eb8790f9c56c018d99ac6cb718b378dfa5"
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
    url "https://files.pythonhosted.org/packages/98/77/993da204c1c9f8109bf17bc73bf820acf56d011fa732cec1f131629759c8/pygitguardian-1.2.1.tar.gz"
    sha256 "d49d8e52cac16737d3c738ad18e3aaea1c7d8c66ef233ca3ac63316818c5ddf4"
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
    url "https://files.pythonhosted.org/packages/94/40/c396b5b212533716949a4d295f91a4c100d51ba95ea9e2d96b6b0517e5a5/urllib3-1.26.5.tar.gz"
    sha256 "a7acd0977125325f516bda9735fa7142b909a8d01e8b2e4c8108d0984e6e0098"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
