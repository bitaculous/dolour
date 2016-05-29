[Dolour]
========

[![Gemnasium Status][Gemnasium Status]][Gemnasium]

**Extract the dominate colors from an image.**

Install
-------

1. Clone the repository

    ```shell
    git clone git@github.com:bitaculous/dolour.git
    ```

2. Run `bundle` to install all dependencies with [Bundler]

Usage
-----

Place the to be examined images into the `images` folder.

### Tasks

Extract the dominate colors:

```
$ thor dolour:extract <COLOR_COUNT>
```

Extract the dominate colors with Miro:

```
$ thor miro:extract <IMAGE> <COLOR_COUNT>
```

Extract the dominate colors with Colorscore:

```
$ thor colorscore:extract <IMAGE> <COLOR_COUNT>
```

Credits
-------

All credit goes to [Jon Buda] for [Miro] and [Milo Winningham] for [Colorscore], which both are used under the hood.

License
-------

Dolour is released under the [MIT License (MIT)], see [LICENSE].

[Bundler]: http://bundler.io "The best way to manage a Ruby application's gems"
[Colorscore]: https://github.com/quadule/colorscore "Finds the dominant colors in an image and scores them against a user-defined palette, using the CIE2000 Delta E formula."
[Dolour]: https://bitaculous.github.io/dolour/ "Extract the dominate colors from an image."
[Gemnasium]: https://gemnasium.com/bitaculous/dolour "Dolour at Gemnasium"
[Gemnasium Status]: https://img.shields.io/gemnasium/bitaculous/dolour.svg?style=flat "Gemnasium Status"
[Jon Buda]: https://github.com/jonbuda "Jon Buda"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/dolour/master/LICENSE "License"
[Milo Winningham]: https://github.com/quadule "Milo Winningham"
[Miro]: https://github.com/jonbuda/miro "A Ruby gem to help extract the dominant colors from an image."
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"