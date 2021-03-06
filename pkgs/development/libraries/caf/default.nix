{ stdenv, fetchFromGitHub, cmake }:

stdenv.mkDerivation rec {
  name = "actor-framework-${version}";
  version = "0.16.2";

  src = fetchFromGitHub {
    owner = "actor-framework";
    repo = "actor-framework";
    rev = "${version}";
    sha256 = "0sdr9mrrkrj9nfwqbznz3pkqfsnsi8kanfy99x01js1spqihy1s3";
  };

  nativeBuildInputs = [ cmake ];

  meta = with stdenv.lib; {
    description = "An open source implementation of the actor model in C++";
    homepage = http://actor-framework.org/;
    license = licenses.bsd3;
    platforms = platforms.unix;
    maintainers = with maintainers; [ bobakker ];
  };
}
