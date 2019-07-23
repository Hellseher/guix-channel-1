(define-module (termonad)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system haskell)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages haskell)
  #:use-module (gnu packages haskell-check)
  #:use-module (gnu packages haskell-web)
  #:use-module (gnu packages pkg-config)
  #:export (termonad))

;; PUBLIC
(define termonad
  (package
   (name "termonad")
   (version "0.2.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/termonad/termonad-" version ".tar.gz"))
     (sha256 (base32 "1js9sj0gj4igigdnbc5ygbn5l2wfhbrm1k565y3advi99imidsd3"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-classy-prelude" ,ghc-classy-prelude)
      ("ghc-colour" ,ghc-colour)
      ("ghc-constraints" ,ghc-constraints)
      ("ghc-data-default" ,ghc-data-default)
      ("ghc-dyre" ,ghc-dyre)
      ("ghc-gi-gdk" ,ghc-gi-gdk)
      ("ghc-gi-gio" ,ghc-gi-gio)
      ("ghc-gi-glib" ,ghc-gi-glib)
      ("ghc-gi-gtk" ,ghc-gi-gtk)
      ("ghc-gi-pango" ,ghc-gi-pango)
      ("ghc-gi-vte" ,ghc-gi-vte)
      ("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-lens" ,ghc-lens)
      ("ghc-pretty-simple" ,ghc-pretty-simple)
      ("ghc-quickcheck" ,ghc-quickcheck)
      ("ghc-xml-conduit" ,ghc-xml-conduit)
      ("ghc-xml-html-qq" ,ghc-xml-html-qq)))
   (native-inputs
    `(("ghc-cabal-doctest" ,ghc-cabal-doctest)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/cdepillabout/termonad")
   (synopsis "Terminal emulator configurable in Haskell")
   (description "Please see <https://github.com/cdepillabout/termonad#readme README.md>.")
   (license license:bsd-3)))

;; DEPENDENCIES
(define ghc-gi-gobject
  (package
   (name "ghc-gi-gobject")
   (version "2.0.16")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-gobject/gi-gobject-" version ".tar.gz"))
     (sha256 (base32 "1bgn4ywx94py0v213iv7mbjjvvy3y7gvpgw4wpn38s2np7al8y65"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading" ,ghc-haskell-gi-overloading)
      ("ghc-gi-glib" ,ghc-gi-glib)))
   (native-inputs
    `(("ghc-haskell-gi" ,ghc-haskell-gi)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "GObject bindings")
   (description "Bindings for GObject, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-gi-gdkpixbuf
  (package
   (name "ghc-gi-gdkpixbuf")
   (version "2.0.16")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-gdkpixbuf/gi-gdkpixbuf-" version ".tar.gz"))
     (sha256 (base32 "0vqnskshbfp9nsgyfg4pifrh007rb7k176ci8niik96kxh95zfzx"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading" ,ghc-haskell-gi-overloading)
      ("ghc-gi-gio" ,ghc-gi-gio)
      ("ghc-gi-gobject" ,ghc-gi-gobject)
      ("ghc-gi-glib" ,ghc-gi-glib)))
   (native-inputs
    `(("ghc-haskell-gi" ,ghc-haskell-gi)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "GdkPixbuf bindings")
   (description "Bindings for GdkPixbuf, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-gi-gio
  (package
   (name "ghc-gi-gio")
   (version "2.0.18")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-gio/gi-gio-" version ".tar.gz"))
     (sha256 (base32 "0h7liqxf63wmhjzgbjshv7pa4fx743jpvkphn5yyjkc0bnfcvsqk"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading" ,ghc-haskell-gi-overloading)
      ("ghc-gi-gobject" ,ghc-gi-gobject)
      ("ghc-gi-glib" ,ghc-gi-glib)))
   (native-inputs
    `(("ghc-haskell-gi" ,ghc-haskell-gi)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "Gio bindings")
   (description "Bindings for Gio, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-gi-cairo
  (package
   (name "ghc-gi-cairo")
   (version "1.0.17")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-cairo/gi-cairo-" version ".tar.gz"))
     (sha256 (base32 "1ax7aly9ahvb18m3zjmy0dk47qfdx5yl15q52c3wp4wa0c5aggax"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading"
       ,ghc-haskell-gi-overloading)))
   (native-inputs
    `(("ghc-haskell-gi" ,ghc-haskell-gi)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "Cairo bindings")
   (description "Bindings for Cairo, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-haskell-gi-overloading
  (package
   (name "ghc-haskell-gi-overloading")
   (version "1.0")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://hackage.haskell.org/package/haskell-gi-overloading/haskell-gi-overloading-"
           version ".tar.gz"))
     (sha256 (base32 "0ak8f79ia9zlk94zr02sq8bqi5n5pd8ria8w1dj3adcdvpw9gmry"))))
   (build-system haskell-build-system)
   (arguments `(#:tests? #f
                #:haddock? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "Overloading support for haskell-gi")
   (description "Control overloading support in haskell-gi generated bindings")
   (license license:bsd-3)))

(define ghc-haskell-gi
  (package
   (name "ghc-haskell-gi")
   (version "0.21.5")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/haskell-gi/haskell-gi-" version ".tar.gz"))
     (sha256 (base32 "1rvi9bmgxq7q6js8yb5yb156yxmnm9px9amgjwzxmr7sxz31dl8j"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-attoparsec" ,ghc-attoparsec)
      ("ghc-pretty-show" ,ghc-pretty-show)
      ("ghc-safe" ,ghc-safe)
      ("ghc-xdg-basedir" ,ghc-xdg-basedir)
      ("ghc-xml-conduit" ,ghc-xml-conduit)
      ("ghc-regex-tdfa" ,ghc-regex-tdfa)))
   (native-inputs
    `(("pkg-config" ,pkg-config)
      ("gobject-introspection" ,gobject-introspection)
      ("glib" ,glib)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "Generate Haskell bindings for GObject Introspection capable libraries")
   (description
    "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably Gtk+, but many other libraries in the GObject ecosystem provide introspection data too.")
   (license license:lgpl2.1)))

(define ghc-gi-gtk
  (package
   (name "ghc-gi-gtk")
   (version "3.0.25")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-gtk/gi-gtk-" version ".tar.gz"))
     (sha256 (base32 "0l6xnh85agjagdmjy72akvxviwkzyngh7rii5idrsd62bb27abx1"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading" ,ghc-haskell-gi-overloading)
      ("ghc-gi-cairo" ,ghc-gi-cairo)
      ("ghc-gi-pango" ,ghc-gi-pango)
      ("ghc-gi-gio" ,ghc-gi-gio)
      ("ghc-gi-gdkpixbuf" ,ghc-gi-gdkpixbuf)
      ("ghc-gi-gdk" ,ghc-gi-gdk)
      ("ghc-gi-gobject" ,ghc-gi-gobject)
      ("ghc-gi-glib" ,ghc-gi-glib)
      ("ghc-gi-atk" ,ghc-gi-atk)))
   (native-inputs
    `(("ghc-haskell-gi" ,ghc-haskell-gi)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "Gtk bindings")
   (description "Bindings for Gtk, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-gi-gdk
  (package
   (name "ghc-gi-gdk")
   (version "3.0.16")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-gdk/gi-gdk-" version ".tar.gz"))
     (sha256 (base32 "0jp3d3zfm20b4ax1g5k1wzh8fxxzsw4ssw7zqx0d13167m4smc3y"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading" ,ghc-haskell-gi-overloading)
      ("ghc-gi-cairo" ,ghc-gi-cairo)
      ("ghc-gi-pango" ,ghc-gi-pango)
      ("ghc-gi-gio" ,ghc-gi-gio)
      ("ghc-gi-gdkpixbuf" ,ghc-gi-gdkpixbuf)
      ("ghc-gi-gobject" ,ghc-gi-gobject)
      ("ghc-gi-glib" ,ghc-gi-glib)))
   (native-inputs
    `(("ghc-haskell-gi" ,ghc-haskell-gi)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "Gdk bindings")
   (description "Bindings for Gdk, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-gi-pango
  (package
   (name "ghc-gi-pango")
   (version "1.0.16")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-pango/gi-pango-" version ".tar.gz"))
     (sha256 (base32 "1x3q1q4ww1v6v42p1wcaghxsja8cigqaqvklkfg4gxyp2f2cdg57"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading" ,ghc-haskell-gi-overloading)
      ("ghc-gi-gobject" ,ghc-gi-gobject)
      ("ghc-gi-glib" ,ghc-gi-glib)))
   (native-inputs
    `(("ghc-haskell-gi" ,ghc-haskell-gi)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "Pango bindings")
   (description
    "Bindings for Pango, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-io-storage
  (package
   (name "ghc-io-storage")
   (version "0.3")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/io-storage/io-storage-" version ".tar.gz"))
     (sha256 (base32 "1ga9bd7iri6vlsxnjx765yy3bxc4lbz644wyw88yzvpjgz6ga3cs"))))
   (build-system haskell-build-system)
   (arguments `(#:tests? #f))
   (home-page "http://github.com/willdonnelly/io-storage")
   (synopsis "A key-value store in the IO monad.")
   (description
    "This library allows an application to extend the 'global state' hidden inside the IO monad with semi-arbitrary data. Data is required to be 'Typeable'. The library provides an essentially unbounded number of key-value stores indexed by strings, with each key within the stores also being a string.")
   (license license:bsd-3)))

(define ghc-gi-glib
  (package
   (name "ghc-gi-glib")
   (version "2.0.17")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-glib/gi-glib-" version ".tar.gz"))
     (sha256 (base32 "0rxbkrwlwnjf46z0qpw0vjw1nv9kl91xp7k2098rqs36kl5bwylx"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading" ,ghc-haskell-gi-overloading)))
   (arguments
    `(#:tests? #f
      #:haddock? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "GLib bindings")
   (description
    "Bindings for GLib, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-dyre
  (package
   (name "ghc-dyre")
   (version "0.8.12")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/dyre/dyre-" version ".tar.gz"))
     (sha256 (base32 "10hnlysy4bjvvznk8v902mlk4jx95qf972clyi1l32xkqrf30972"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-paths" ,ghc-paths)
      ("ghc-executable-path" ,ghc-executable-path)
      ("ghc-xdg-basedir" ,ghc-xdg-basedir)
      ("ghc-io-storage" ,ghc-io-storage)))
   (arguments `(#:tests? #f))
   (home-page "http://github.com/willdonnelly/dyre")
   (synopsis "Dynamic reconfiguration in Haskell")
   (description
    "Dyre implements dynamic reconfiguration facilities after the style of Xmonad. Dyre aims to be as simple as possible without sacrificing features, and places an emphasis on simplicity of integration with an application. A full introduction with a complete example project can be found in the documentation for 'Config.Dyre'")
   (license license:bsd-3)))

(define ghc-basic-prelude
  (package
   (name "ghc-basic-prelude")
   (version "0.7.0")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/basic-prelude/basic-prelude-" version ".tar.gz"))
     (sha256 (base32 "0yckmnvm6i4vw0mykj4fzl4ldsf67v8d2h0vp1bakyj84n4myx8h"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-hashable" ,ghc-hashable)
      ("ghc-unordered-containers" ,ghc-unordered-containers)
      ("ghc-vector" ,ghc-vector)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/snoyberg/basic-prelude#readme")
   (synopsis "An enhanced core prelude; a common foundation for alternate preludes.")
   (description "Please see the README on Github at <https://github.com/snoyberg/basic-prelude#readme>")
   (license license:expat)))

(define ghc-dlist-instances
  (package
   (name "ghc-dlist-instances")
   (version "0.1.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://hackage.haskell.org/package/dlist-instances/dlist-instances-" version ".tar.gz"))
     (sha256 (base32 "0nsgrr25r4qxv2kpn7i20hra8jjkyllxfrhh5hml3ysjdz010jni"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-semigroups" ,ghc-semigroups)
      ("ghc-dlist" ,ghc-dlist)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/gregwebs/dlist-instances")
   (synopsis "Difference lists instances")
   (description
    "See the dlist packages. This package is the canonical source for some orphan instances. Orphan instances are placed here to avoid dependencies elsewhere.")
   (license license:bsd-3)))

(define ghc-gi-atk
  (package
   (name "ghc-gi-atk")
   (version "2.0.15")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-atk/gi-atk-" version ".tar.gz"))
     (sha256 (base32 "1vmzby12nvbrka6f44pr1pjwccl0p6s984pxvibajzp72x2knxc9"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading" ,ghc-haskell-gi-overloading)
      ("ghc-gi-gobject" ,ghc-gi-gobject)
      ("ghc-gi-glib" ,ghc-gi-glib)))
   (native-inputs
    `(("ghc-haskell-gi" ,ghc-haskell-gi)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "Atk bindings")
   (description "Bindings for Atk, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-mono-traversable-instances
  (package
   (name "ghc-mono-traversable-instances")
   (version "0.1.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://hackage.haskell.org/package/mono-traversable-instances/mono-traversable-instances-"
           version ".tar.gz"))
     (sha256 (base32 "0zh81hvqnracil2nvkx14xzwv9vavsnx739acp6gycdyrs5jpzxm"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-mono-traversable" ,ghc-mono-traversable)
      ("ghc-semigroupoids" ,ghc-semigroupoids)
      ("ghc-comonad" ,ghc-comonad)
      ("ghc-vector-instances" ,ghc-vector-instances)
      ("ghc-dlist" ,ghc-dlist)
      ("ghc-dlist-instances" ,ghc-dlist-instances)
      ("ghc-semigroups" ,ghc-semigroups)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/snoyberg/mono-traversable#readme")
   (synopsis "Extra typeclass instances for mono-traversable")
   (description "Please see README.md")
   (license license:expat)))

(define ghc-mutable-containers
  (package
   (name "ghc-mutable-containers")
   (version "0.3.4")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://hackage.haskell.org/package/mutable-containers/mutable-containers-"
           version
           ".tar.gz"))
     (sha256
      (base32
       "0zhkhlvg9yw45fg3srvzx7j81547djpkfw7higdvlj7fmph6c6b4"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-mono-traversable" ,ghc-mono-traversable)
      ("ghc-primitive" ,ghc-primitive)
      ("ghc-vector" ,ghc-vector)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/snoyberg/mono-traversable#readme")
   (synopsis "Abstactions and concrete implementations of mutable containers")
   (description "See docs and README at <http://www.stackage.org/package/mutable-containers>")
   (license license:expat)))

(define ghc-say
  (package
   (name "ghc-say")
   (version "0.1.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/say/say-" version ".tar.gz"))
     (sha256 (base32 "1r5kffjfwpas45g74sip8glrj1m9nygrnxjm7xgw898rq9pnafgn"))))
   (build-system haskell-build-system)
   (arguments `(#:tests? #f))
   (home-page "https://github.com/fpco/say#readme")
   (synopsis "Send textual messages to a Handle in a thread-friendly way")
   (description "Please see the README and documentation at <https://www.stackage.org/package/say>")
   (license license:expat)))

(define ghc-pointed
  (package
   (name "ghc-pointed")
   (version "5.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/pointed/pointed-" version ".tar.gz"))
     (sha256 (base32 "1p91a762xglckscnhpflxzav8byf49a02mli3983i4kpr2jkaimr"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-data-default-class" ,ghc-data-default-class)
      ("ghc-comonad" ,ghc-comonad)
      ("ghc-kan-extensions" ,ghc-kan-extensions)
      ("ghc-semigroupoids" ,ghc-semigroupoids)
      ("ghc-semigroups" ,ghc-semigroups)
      ("ghc-stm" ,ghc-stm)
      ("ghc-tagged" ,ghc-tagged)
      ("ghc-transformers-compat" ,ghc-transformers-compat)
      ("ghc-hashable" ,ghc-hashable)
      ("ghc-unordered-containers" ,ghc-unordered-containers)))
   (arguments `(#:tests? #f))
   (home-page "http://github.com/ekmett/pointed/")
   (synopsis "Pointed and copointed data")
   (description "Pointed and copointed data.")
   (license license:bsd-3)))

(define ghc-keys
  (package
   (name "ghc-keys")
   (version "3.12.1")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/keys/keys-" version ".tar.gz"))
     (sha256 (base32 "1yqm4gpshsgswx6w78z64c83gpydh6jhgslx2lnc10nzhy0s9kkz"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-comonad" ,ghc-comonad)
      ("ghc-free" ,ghc-free)
      ("ghc-hashable" ,ghc-hashable)
      ("ghc-semigroupoids" ,ghc-semigroupoids)
      ("ghc-semigroups" ,ghc-semigroups)
      ("ghc-tagged" ,ghc-tagged)
      ("ghc-transformers-compat" ,ghc-transformers-compat)
      ("ghc-unordered-containers" ,ghc-unordered-containers)))
   (arguments `(#:tests? #f))
   (home-page "http://github.com/ekmett/keys/")
   (synopsis "Keyed functors and containers")
   (description
    "This package provides a bunch of ad hoc classes for accessing parts of a container. . In practice this package is largely subsumed by the <https://hackage.haskell.org/package/lens lens package>, but it is maintained for now as it has much simpler dependencies.")
   (license license:bsd-3)))

(define ghc-gi-vte
  (package
   (name "ghc-gi-vte")
   (version "2.91.19")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/gi-vte/gi-vte-" version ".tar.gz"))
     (sha256 (base32 "1hnhidjr7jh7i826lj6kdn264i592sfl5kwvymnpiycmcb37dd4y"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-haskell-gi-base" ,ghc-haskell-gi-base)
      ("ghc-haskell-gi" ,ghc-haskell-gi)
      ("ghc-haskell-gi-overloading" ,ghc-haskell-gi-overloading)
      ("ghc-gi-pango" ,ghc-gi-pango)
      ("ghc-gi-gtk" ,ghc-gi-gtk)
      ("ghc-gi-gio" ,ghc-gi-gio)
      ("ghc-gi-gdk" ,ghc-gi-gdk)
      ("ghc-gi-gobject" ,ghc-gi-gobject)
      ("ghc-gi-glib" ,ghc-gi-glib)
      ("ghc-gi-atk" ,ghc-gi-atk)))
   (native-inputs
    `(("ghc-haskell-gi" ,ghc-haskell-gi)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi")
   (synopsis "Vte bindings")
   (description "Bindings for Vte, autogenerated by haskell-gi.")
   (license license:lgpl2.1)))

(define ghc-haskell-gi-base
  (package
   (name "ghc-haskell-gi-base")
   (version "0.21.4")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://hackage.haskell.org/package/haskell-gi-base/haskell-gi-base-" version ".tar.gz"))
     (sha256 (base32 "0vrl0cqws1l0ba7avf16c9zyfsvq7gd8wv4sjzd7rjk6jmg38vds"))))
   (native-inputs
    `(("pkg-config" ,pkg-config)
      ("gobject-introspection" ,gobject-introspection)
      ("glib" ,glib)))
   (build-system haskell-build-system)
   (arguments `(#:tests? #f))
   (home-page "https://github.com/haskell-gi/haskell-gi-base")
   (synopsis "Foundation for libraries generated by haskell-gi")
   (description "Foundation for libraries generated by haskell-gi")
   (license license:lgpl2.1)))

(define ghc-pretty-simple
  (package
   (name "ghc-pretty-simple")
   (version "2.2.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/pretty-simple/pretty-simple-" version ".tar.gz"))
     (sha256 (base32 "0cf7pfx98dq8ykxja7gi2y7zpczj41sqfg4dindm8v5knlv1ppik"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-ansi-terminal" ,ghc-ansi-terminal)
      ("ghc-optparse-applicative" ,ghc-optparse-applicative)
      ("ghc-aeson" ,ghc-aeson)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/cdepillabout/pretty-simple")
   (synopsis "pretty printer for data types with a 'Show' instance.")
   (description "Please see <https://github.com/cdepillabout/pretty-simple#readme README.md>.")
   (license license:bsd-3)))

(define ghc-from-sum
  (package
   (name "ghc-from-sum")
   (version "0.2.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/from-sum/from-sum-" version ".tar.gz"))
     (sha256 (base32 "0rv66a7mhswb4sqkyarg9kxxfpiymsmrk49gprq8mpwq7d1qmvd1"))))
   (build-system haskell-build-system)
   (arguments `(#:tests? #f))
   (home-page "https://github.com/cdepillabout/from-sum")
   (synopsis "Canonical fromMaybeM and fromEitherM functions.")
   (description "Please see README.md")
   (license license:bsd-3)))

(define ghc-heterocephalus
  (package
   (name "ghc-heterocephalus")
   (version "1.0.5.2")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/heterocephalus/heterocephalus-" version ".tar.gz"))
     (sha256 (base32 "08sr2ps3kb2v6pglkls814w6fpvwkysd3k2s15pj9fhmhx82kf2h"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-blaze-html" ,ghc-blaze-html)
      ("ghc-blaze-markup" ,ghc-blaze-markup)
      ("ghc-dlist" ,ghc-dlist)
      ("ghc-parsec" ,ghc-parsec)
      ("ghc-shakespeare" ,ghc-shakespeare)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/arowM/heterocephalus#readme")
   (synopsis "A type-safe template engine for working with popular front end development tools")
   (description
    "Recent front end development tools and languages are growing fast and have quite a complicated ecosystem. Few front end developers want to be forced use Shakespeare templates. Instead, they would rather use @node@-friendly engines such that @pug@, @slim@, and @haml@. However, in using these template engines, we lose the compile-time variable interpolation and type checking from Shakespeare. . Heterocephalus is intended for use with another feature rich template engine and provides a way to interpolate server side variables into a precompiled template file with @forall@, @if@, and @case@ statements.")
   (license license:expat)))

(define ghc-html-conduit
  (package
   (name "ghc-html-conduit")
   (version "1.3.2")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/html-conduit/html-conduit-" version ".tar.gz"))
     (sha256 (base32 "0l5hc7bf57p5jiqh3wvnqapc27ibnlv00zm6szc0nqbvknzvvz85"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-resourcet" ,ghc-resourcet)
      ("ghc-conduit" ,ghc-conduit)
      ("ghc-xml-conduit" ,ghc-xml-conduit)
      ("ghc-xml-types" ,ghc-xml-types)
      ("ghc-attoparsec" ,ghc-attoparsec)
      ("ghc-conduit-extra" ,ghc-conduit-extra)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/snoyberg/xml")
   (synopsis "Parse HTML documents using xml-conduit datatypes.")
   (description
    "This package uses tagstream-conduit for its parser. It automatically balances mismatched tags, so that there shouldn't be any parse failures. It does not handle a full HTML document rendering, such as adding missing html and head tags. Note that, since version 1.3.1, it uses an inlined copy of tagstream-conduit with entity decoding bugfixes applied.")
   (license license:expat)))

(define ghc-vector-instances
  (package
   (name "ghc-vector-instances")
   (version "3.4")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://hackage.haskell.org/package/vector-instances/vector-instances-" version ".tar.gz"))
     (sha256 (base32 "10akvpa5w9bp0d8hflab63r9laa9gy2hv167smhjsdzq1kplc0hv"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-vector" ,ghc-vector)
      ("ghc-semigroupoids" ,ghc-semigroupoids)
      ("ghc-semigroups" ,ghc-semigroups)
      ("ghc-comonad" ,ghc-comonad)
      ("ghc-pointed" ,ghc-pointed)
      ("ghc-keys" ,ghc-keys)
      ("ghc-hashable" ,ghc-hashable)))
   (arguments `(#:tests? #f))
   (home-page "http://github.com/ekmett/vector-instances")
   (synopsis "Orphan Instances for 'Data.Vector'")
   (description "")
   (license license:bsd-3)))

(define ghc-xml-html-qq
  (package
   (name "ghc-xml-html-qq")
   (version "0.1.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/xml-html-qq/xml-html-qq-" version ".tar.gz"))
     (sha256 (base32 "0ni354ihiaax7dlghq0qsili0sqy4z9vc3a75i24z2m59hgvnbhs"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-blaze-markup" ,ghc-blaze-markup)
      ("ghc-conduit" ,ghc-conduit)
      ("ghc-data-default" ,ghc-data-default)
      ("ghc-from-sum" ,ghc-from-sum)
      ("ghc-heterocephalus" ,ghc-heterocephalus)
      ("ghc-html-conduit" ,ghc-html-conduit)
      ("ghc-resourcet" ,ghc-resourcet)
      ("ghc-th-lift" ,ghc-th-lift)
      ("ghc-th-lift-instances" ,ghc-th-lift-instances)
      ("ghc-xml-conduit" ,ghc-xml-conduit)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/cdepillabout/xml-html-qq")
   (synopsis "Quasi-quoters for XML and HTML Documents")
   (description "Please see <https://github.com/cdepillabout/xml-html-qq#readme README.md>.")
   (license license:bsd-3)))

(define ghc-cabal-doctest
  (package
   (name "ghc-cabal-doctest")
   (version "1.0.6")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://hackage.haskell.org/package/cabal-doctest/cabal-doctest-" version ".tar.gz"))
     (sha256 (base32 "0bgd4jdmzxq5y465r4sf4jv2ix73yvblnr4c9wyazazafddamjny"))))
   (build-system haskell-build-system)
   (arguments `(#:tests? #f
                #:haskell ,ghc-8.0))
   (home-page "https://github.com/phadej/cabal-doctest")
   (synopsis "A Setup.hs helper for doctests running")
   (description
    "Currently (beginning of 2017), there isn't @cabal doctest@ command. Yet, to properly work doctest needs plenty of configuration. This library provides the common bits for writing custom Setup.hs See <https://github.com/haskell/cabal/issues/2327 Cabal/2327> for the progress of @cabal doctest@, i.e. whether this library is obsolete.")
   (license license:bsd-3)))

(define ghc-classy-prelude
  (package
   (name "ghc-classy-prelude")
   (version "1.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (string-append
           "https://hackage.haskell.org/package/classy-prelude/classy-prelude-" version ".tar.gz"))
     (sha256 (base32 "1nm4lygxqb1wq503maki6dsah2gpn5rd22jmbwjxfwyzgyqy9fnk"))))
   (build-system haskell-build-system)
   (inputs
    `(("ghc-async" ,ghc-async)
      ("ghc-basic-prelude" ,ghc-basic-prelude)
      ("ghc-bifunctors" ,ghc-bifunctors)
      ("ghc-chunked-data" ,ghc-chunked-data)
      ("ghc-dlist" ,ghc-dlist)
      ("ghc-hashable" ,ghc-hashable)
      ("ghc-mono-traversable" ,ghc-mono-traversable)
      ("ghc-mono-traversable-instances" ,ghc-mono-traversable-instances)
      ("ghc-mutable-containers" ,ghc-mutable-containers)
      ("ghc-primitive" ,ghc-primitive)
      ("ghc-say" ,ghc-say)
      ("ghc-semigroups" ,ghc-semigroups)
      ("ghc-stm" ,ghc-stm)
      ("ghc-stm-chans" ,ghc-stm-chans)
      ("ghc-unliftio" ,ghc-unliftio)
      ("ghc-unordered-containers" ,ghc-unordered-containers)
      ("ghc-vector" ,ghc-vector)
      ("ghc-vector-instances" ,ghc-vector-instances)))
   (arguments `(#:tests? #f))
   (home-page "https://github.com/snoyberg/mono-traversable#readme")
   (synopsis "A typeclass-based Prelude.")
   (description "See docs and README at <http://www.stackage.org/package/classy-prelude>")
   (license license:expat)))

