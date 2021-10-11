class Ggshield < Formula
  include Language::Python::Virtualenv

  desc "Detect secret in source code, scan your repos and docker images for leaks"
  homepage "https://github.com/GitGuardian/ggshield"
  url "https://files.pythonhosted.org/packages/81/85/79e39491697e19ecd74d5565f6f95759646b1aca4c3e7c2201addb976587/ggshield-1.9.0.tar.gz"
  sha256 "64d4fc87d5625957a29d2cc4ab0fe2cfe1363111101ee1ba69e3855745bc92dc"

  depends_on "python3"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6d/78/f8db8d57f520a54f0b8a438319c342c61c22759d8f9a1cd2e2180b5e5ea9/certifi-2021.5.30.tar.gz"
    sha256 "2bbf76fd432960138b3ef6dda3dde0544f27cbf8546c458e60baf371917ba9ee"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/eb/7f/a6c278746ddbd7094b019b08d1b2187101b1f596f35f81dc27f57d8fcf7c/charset-normalizer-2.0.6.tar.gz"
    sha256 "5ec46d183433dcbd0ab716f2d7f29d8dee50505b3fdb40c6b985c7c4f5a3591f"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cb/38/4c4d00ddfa48abe616d7e572e02a04273603db446975ab46bbcd36552005/idna-3.2.tar.gz"
    sha256 "467fbad99067910785144ce333826c71fb0e63a425657295239737f7ecd125f3"
  end

  resource "marshmallow" do
    url "https://files.pythonhosted.org/packages/88/92/8aac4cb538002d38ae068b8d7bc9fabc2964eb97672e3cb6e16682cdc5be/marshmallow-3.13.0.tar.gz"
    sha256 "c67929438fd73a2be92128caa0325b1b5ed8b626d91a094d2f7f2771bf1f1c0e"
  end

  resource "pygitguardian" do
    url "https://files.pythonhosted.org/packages/a8/68/49497c56eb2b52495a0ba60c6dcb26736ee9f7d10db1def722f8d296af54/pygitguardian-1.2.2.tar.gz"
    sha256 "f87c3744d77d236cc83fa54a052fcf82162dfc7c451e081c65f7505cceda6f86"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/36/b7/08860463445e6f3b4c5ac24717ce0e8a2f6e9dbc329b0e5d148094ce89ec/python-dotenv-0.19.1.tar.gz"
    sha256 "14f8185cc8d494662683e6914addcb7e95374771e707601dfc70166946b4c4b8"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/e7/01/3569e0b535fb2e4a6c384bdbed00c55b9d78b5084e0fb7f4d0bf523d7670/requests-2.26.0.tar.gz"
    sha256 "b8aa58f8cf793ffd8782d3d8cb19e66ef36f7aba4353eec859e74678b01b07a7"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/8a/48/a76be51647d0eb9f10e2a4511bf3ffb8cc1e6b14e9e4fab46173aa79f981/termcolor-1.1.0.tar.gz"
    sha256 "1d6d69ce66211143803fbc56652b41d73b4a400a2891d7bf7a1cdf4c02de613b"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/80/be/3ee43b6c5757cabea19e75b8f46eaf05a2f5144107d7db48c7cf3a864f73/urllib3-1.26.7.tar.gz"
    sha256 "4987c65554f7a2dbf30c18fd48778ef124af6fab771a377103da0585e2336ece"
  end

  resource "yaspin" do
    url "https://files.pythonhosted.org/packages/6a/b2/144d100c915784ab551e0f7809aaecdd103786a227b0f30db341ffe649be/yaspin-2.1.0.tar.gz"
    sha256 "c8d34eca9fda3f4dfbe59f57f3cf0f3641af3eefbf1544fbeb9b3bacf82c580a"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
