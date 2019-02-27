class JdcloudCli < Formula
    include Language::Python::Virtualenv
  
    desc "Command-line utility for jdcloud.com"
    homepage "https://github.com/jdcloud-api/jdcloud-cli"
    url "https://github.com/jdcloud-api/jdcloud-cli/archive/v1.0.3.tar.gz"
    sha256 "af57a0138a179fcb539d1496925a30df57d87b8b9da2acf5f6d19209b13bd7d8"
    head 'https://github.com/jdcloud-api/jdcloud-cli.git', :branch => "lidaobing-patch-2"

    depends_on "python"
  
    resource "argcomplete" do
      url "https://files.pythonhosted.org/packages/3c/21/9741e5e5e63245a8cdafb32ffc738bff6e7ef6253b65953e77933e56ce88/argcomplete-1.9.4.tar.gz"
      sha256 "06c8a54ffaa6bfc9006314498742ec8843601206a3b94212f82657673662ecf1"
    end
  
    resource "certifi" do
      url "https://files.pythonhosted.org/packages/55/54/3ce77783acba5979ce16674fc98b1920d00b01d337cfaaf5db22543505ed/certifi-2018.11.29.tar.gz"
      sha256 "47f9c83ef4c0c621eaef743f133f09fa8a74a9b75f037e8624f83bd1b6626cb7"
    end
  
    resource "chardet" do
      url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
      sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
    end
  
    resource "configparser" do
      url "https://files.pythonhosted.org/packages/7c/69/c2ce7e91c89dc073eb1aa74c0621c3eefbffe8216b3f9af9d3885265c01c/configparser-3.5.0.tar.gz"
      sha256 "5308b47021bc2340965c371f0f058cc6971a04502638d4244225c49d80db273a"
    end
  
    resource "idna" do
      url "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz"
      sha256 "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
    end
  
    resource "jdcloud-sdk" do
      url "https://files.pythonhosted.org/packages/d3/48/6fd262e34b1a95e64b95f936f831c179c3ae5a08c98fabe162401a5d224c/jdcloud_sdk-1.4.0.tar.gz"
      sha256 "47f9c4636f16b350a8684414da70f34e6080e7202d7be7c7991718f2ac2c90e1"
    end
  
    resource "Jinja2" do
      url "https://files.pythonhosted.org/packages/56/e6/332789f295cf22308386cf5bbd1f4e00ed11484299c5d7383378cf48ba47/Jinja2-2.10.tar.gz"
      sha256 "f84be1bb0040caca4cea721fcbbbbd61f9be9464ca236387158b0feea01914a4"
    end
  
    resource "MarkupSafe" do
      url "https://files.pythonhosted.org/packages/ac/7e/1b4c2e05809a4414ebce0892fe1e32c14ace86ca7d50c70f00979ca9b3a3/MarkupSafe-1.1.0.tar.gz"
      sha256 "4e97332c9ce444b0c2c38dd22ddc61c743eb208d916e4265a2a3b575bdccb1d3"
    end
  
    resource "PyYAML" do
      url "https://files.pythonhosted.org/packages/9e/a3/1d13970c3f36777c583f136c136f804d70f500168edc1edea6daa7200769/PyYAML-3.13.tar.gz"
      sha256 "3ef3092145e9b70e3ddd2c7ad59bdd0252a94dfe3949721633e41344de00a6bf"
    end
  
    resource "requests" do
      url "https://files.pythonhosted.org/packages/52/2c/514e4ac25da2b08ca5a464c50463682126385c4272c18193876e91f4bc38/requests-2.21.0.tar.gz"
      sha256 "502a824f31acdacb3a35b6690b5fbf0bc41d63a24a45c4004352b0242707598e"
    end
  
    resource "six" do
      url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
      sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
    end
  
    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/b1/53/37d82ab391393565f2f831b8eedbffd57db5a718216f82f1a8b4d381a1c1/urllib3-1.24.1.tar.gz"
      sha256 "de9529817c93f27c8ccbfead6985011db27bd0ddfcdb2d86f3f663385c6a9c22"
    end
  
    resource "websocket_client" do
      url "https://files.pythonhosted.org/packages/35/d4/14e446a82bc9172d088ebd81c0b02c5ca8481bfeecb13c9ef07998f9249b/websocket_client-0.54.0.tar.gz"
      sha256 "e51562c91ddb8148e791f0155fdb01325d99bb52c4cdbb291aee7a3563fd0849"
    end

    def install
      virtualenv_install_with_resources
    end
  
    # test do
    #   # test shell completion output
    #   completion_token = "_hass_cli_completion"
    #   assert_match completion_token, shell_output("#{bin}/hass-cli completion bash")
    #   assert_match completion_token, shell_output("#{bin}/hass-cli completion zsh")
    # end
  end
  