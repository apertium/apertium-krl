# Karelian lexical data for apertium

This is an Apertium monolingual language package for Karelian (krl is "Karelian
proper"). What you can use this language package for:

* Morphological analysis of Karelian
* Morphological generation of Karelian
* Part-of-speech tagging of Karelian

The orthography is based on Zaikov (2013): *Vienankarjalan kielioppi* ISBN:
978-951-97551-7-5, although lexical data is also harvested from [Karjalan kielen
sanakirja](http://kaino.kotus.fi/cgi-bin/kks/karjala.cgi) and practical needs of
parsing corpora, i.e. just accepting other dialects on the continuum up-to
Livvi/olonets karelian language.

## Requirements

u will need the following software installed:

* lttoolbox (>= 3.3.0)
* apertium (>= 3.3.0)
* vislcg3 (>= 0.9.9.10297)
* hfst (>= 3.8.2)

If this does not make any sense, we recommend you look at: apertium.org.

## Compiling

Given the requirements being installed, you should be able to just run:

```
    $ ./configure
    $ make
```

You can use `./autogen.sh` instead of `./configure` if you're compiling
from source.

If you're doing development, you don't have to install the data, you
can use it directly from this directory.

If you are installing this language package as a prerequisite for an
Apertium translation pair, then do (typically as root / with sudo):

```
    # make install
```

You can give a `--prefix` to `./configure` to install as a non-root user,
but make sure to use the same prefix when installing the translation
pair and any other language packages.

## Testing

If you are in the source directory after running make, the following
commands should work:

```
$ make check
```

## Files and data

* `apertium-krl.krl.lexc` - Morphotactic dictionary
* `apertium-krl.krl.twol` - Morphophonological rules
* `apertium-krl.krl.rlx` - Constraint Grammar disambiguation rules
* `modes.xml` - Translation modes

## For more information

* https://wiki.apertium.org/wiki/Installation
* https://wiki.apertium.org/wiki/apertium-krl
* https://wiki.apertium.org/wiki/Using_an_lttoolbox_dictionary

## Help and support

If you need help using this language pair or data, you can contact:

* Mailing list: apertium-stuff@lists.sourceforge.net
* IRC: `#apertium` on `irc.oftc.net`

See also the file AUTHORS included in this distribution.

## Cite as

There are no direct documentation to this work, but refer to:

* **Tommi A Pirinen** (2019, to appear), *Workflows for kickstarting RBMT in
  virtually No-Resource Situation*, in The 2nd Workshop on Technologies for MT
  of Low Resource Languages (LoResMT 2019), at MTsummit 2019, Dublin.
* **Tommi A Pirinen** (2019), *Building minority dependency
   treebanks, dictionaries and computational grammars at the same time---an
   experiment in Karelian treebanking*,  in Universal Dependencies Workshop
   2019 (UDW 2019) at Syntaxfest 2019, Paris, France.

```bib
@inproceedings{pirinen2019workflows,
  title={Workflows for kickstarting RBMT in virtually No-Resource
        Situation},
  author={Pirinen, Tommi A},
  booktitle={Proceedings of the 2nd Workshop on Technologies for MT
        of Low Resource Languages},
  year={2019},
  misc={(to appear)},
}

@inproceedings{pirinen2019building,
  title={Building minority dependency treebanks, dictionaries and
        computational grammars at the same time---an experiment in Karelian
        treebanking},
  author={Pirinen, Tommi A},
  booktitle={Proceedings of the Universal Dependencies Workshop 2019},
  year={2019},
  misc={(to appear)},
}
```

