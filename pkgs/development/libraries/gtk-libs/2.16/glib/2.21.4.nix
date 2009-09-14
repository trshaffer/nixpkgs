args: with args;

stdenv.mkDerivation rec {
  name = "glib-2.21.4";
  
  src = fetchurl {
    url = "mirror://gnome/sources/glib/2.21/${name}.tar.bz2";
    sha256 = "b772e4bdf1b28dd23cdb4c4d7f1d219ddb748226d0207e57c75992bf0100182d";
  };
  
  buildInputs = [pkgconfig gettext perl];

  meta = {
    description = "GLib, a C library of programming buildings blocks";

    longDescription = ''
      GLib provides the core application building blocks for libraries
      and applications written in C.  It provides the core object
      system used in GNOME, the main loop implementation, and a large
      set of utility functions for strings and common data structures.
    '';

    homepage = http://www.gtk.org/;

    license = "LGPLv2+";
  };
}
