let defs = ./defaults.dhall

in  let exts = ./default-extensions.dhall

    in    defs
        ⫽ exts
        ⫽ { name =
              "www-hakyll-flare-timing"
          , version =
              "0.2.0"
          , synopsis =
              "flaretiming.com"
          , description =
              "Static site generator for flaretiming.com"
          , category =
              "web"
          , github =
              "blockscope/blockscope"
          , homepage =
              "https://github.com/flaretiming/flaretiming/tree/develop#readme"
          , executables =
              { site =
                  { dependencies =
                  [ "base", "blaze-html", "filepath", "hakyll", "pandoc" ]
                  , source-dirs =
                      "www-hakyll"
                  , main =
                      "site.hs"
                  }
              }
          , tests =
              { hlint =
                  { dependencies =
                      [ "base", "hakyll", "pandoc", "blaze-html", "hlint" ]
                  , main =
                      "HLint.hs"
                  , source-dirs =
                      [ ".", "test-suite-hlint" ]
                  }
              }
          }
