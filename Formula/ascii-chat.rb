class AsciiChat < Formula
  include Language::Python::Virtualenv

  desc "Peer-to-peer terminal video+audio calling rendered as colored ASCII"
  homepage "https://github.com/vtvipul/ascii-chat"
  url "https://github.com/vtvipul/ascii-chat/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8bd7751e1c533297786dc408342fa80ab65327d2ac90780bd40a1324b613ae26"
  license "MIT"

  # System libraries that aiortc / sounddevice / PyAV link against. Brew will
  # install these before pip-installing the Python deps below.
  depends_on "ffmpeg"
  depends_on "libvpx"
  depends_on "opus"
  depends_on "portaudio"
  depends_on "python@3.12"
  depends_on "srtp"

  # Python dependencies, pinned by version + SHA256. Generated via
  # homebrew-pypi-poet -r aiortc / numpy / sounddevice.

  resource "aioice" do
    url "https://files.pythonhosted.org/packages/67/04/df7286233f468e19e9bedff023b6b246182f0b2ccb04ceeb69b2994021c6/aioice-0.10.2.tar.gz"
    sha256 "bf236c6829ee33c8e540535d31cd5a066b531cb56de2be94c46be76d68b1a806"
  end

  resource "aiortc" do
    url "https://files.pythonhosted.org/packages/51/9c/4e027bfe0195de0442da301e2389329496745d40ae44d2d7c4571c4290ce/aiortc-1.14.0.tar.gz"
    sha256 "adc8a67ace10a085721e588e06a00358ed8eaf5f6b62f0a95358ff45628dd762"
  end

  resource "av" do
    url "https://files.pythonhosted.org/packages/78/cd/3a83ffbc3cc25b39721d174487fb0d51a76582f4a1703f98e46170ce83d4/av-16.1.0.tar.gz"
    sha256 "a094b4fd87a3721dacf02794d3d2c82b8d712c85b9534437e82a8a978c175ffd"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/9f/a9/db8f313fdcd85d767d4973515e1db101f9c71f95fced83233de224673757/cryptography-48.0.0.tar.gz"
    sha256 "5c3932f4436d1cccb036cb0eaef46e6e2db91035166f1ad6505c3c9d5a635920"
  end

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/8c/8b/57666417c0f90f08bcafa776861060426765fdb422eb10212086fb811d26/dnspython-2.8.0.tar.gz"
    sha256 "181d3c6996452cb1189c4046c61599b84a5a86e099562ffde77d26984ff26d0f"
  end

  resource "google-crc32c" do
    url "https://files.pythonhosted.org/packages/03/41/4b9c02f99e4c5fb477122cd5437403b552873f014616ac1d19ac8221a58d/google_crc32c-1.8.0.tar.gz"
    sha256 "a428e25fb7691024de47fecfbff7ff957214da51eddded0da0ae0e0f03a2cf79"
  end

  resource "ifaddr" do
    url "https://files.pythonhosted.org/packages/e8/ac/fb4c578f4a3256561548cd825646680edcadb9440f3f68add95ade1eb791/ifaddr-0.2.0.tar.gz"
    sha256 "cc0cbfcaabf765d44595825fb96a99bb12c79716b73b44330ea38ee2b0c4aed4"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/d0/ad/fed0499ce6a338d2a03ebae59cd15093910c8875328855781952abf6c2fe/numpy-2.4.6.tar.gz"
    sha256 "f3a3570c4a2a16746ac2c31a7c7c7b0c186b95ce902e33db6f28094ed7387dda"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pyee" do
    url "https://files.pythonhosted.org/packages/8b/04/e7c1fe4dc78a6fdbfd6c337b1c3732ff543b8a397683ab38378447baa331/pyee-13.0.1.tar.gz"
    sha256 "0b931f7c14535667ed4c7e0d531716368715e860b988770fc7eb8578d1f67fc8"
  end

  resource "pylibsrtp" do
    url "https://files.pythonhosted.org/packages/0d/a6/6e532bec974aaecbf9fe4e12538489fb1c28456e65088a50f305aeab9f89/pylibsrtp-1.0.0.tar.gz"
    sha256 "b39dff075b263a8ded5377f2490c60d2af452c9f06c4d061c7a2b640612b34d4"
  end

  resource "pyOpenSSL" do
    url "https://files.pythonhosted.org/packages/1a/51/27a5ad5f939d08f690a326ef9582cda7140555180db71695f6fb747d6a36/pyopenssl-26.2.0.tar.gz"
    sha256 "8c6fcecd1183a7fc897548dfe388b0cdb7f37e018200d8409cf33959dbe35387"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/2a/f9/2592608737553638fca98e21e54bfec40bf577bb98a61b2770c912aab25e/sounddevice-0.5.5.tar.gz"
    sha256 "22487b65198cb5bf2208755105b524f78ad173e5ab6b445bdab1c989f6698df3"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # The full app needs camera + mic which we can't grant in a test env,
    # so we settle for confirming the console script exists and imports work.
    assert_match "Peer-to-peer terminal video+audio call", shell_output("#{bin}/ascii-chat --help")
  end
end
