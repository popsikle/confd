# <a name="title"></a> confd [![Build Status](https://secure.travis-ci.org/saltmine/confd.png?branch=master)](http://travis-ci.org/saltmine/confd)


Description
===========

This is a cookbook for installing and configuring [confd](https://github.com/kelseyhightower/confd).


Requirements
============

All of the requirements are explicitly defined in the recipes.


Attributes
==========

## Default

TODO

## Source

* `node['confd']['source']['repo']` - The git repo to use for the
  source code of confd
* `node['confd']['source']['sha']` - The sha/branch/tag of the repo
  you wish to clone. Uses `node['confd']['version']` by
  default.
* `node['confd']['source']['go_path']` - your `go_path`
  location. Needed for building from source


Testing
=======

## Vagrant

```
vagrant up precise64
```

## Strainer

```
rake strainer
```

## Test-Kitchen + ServerSpec

```
rake kitchen
```


Contributing
========

Any and all contributions are welcome.   We do ask that you test your contributions with the testing framework before you send a PR.

Documentation contributions will earn you lots of hugs and kisses.


Usage
=====

TODO

## Defaults

TODO

# WARNING

* Currently only tested on Ubuntu Precise, and ArchLinux.

## License and Author

- Author:    Salvatore Poliandro III (@popsikle)

- Copyright: 2015, Keep Holdings (Keep.com)


Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.