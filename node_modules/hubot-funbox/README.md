# Hubot Funbox

[![NPM version][npm-image]][npm-url]
[![Build Status][travis-image]][travis-url]

A box filled with SFW fun for [Hubot](https://hubot.github.com).


## Installation

Add 'hubot-funbox' to your `package.json` file, e.g.

```json
  "dependencies": {
    "hubot": ">= 2.6.0 < 3.0.0",
    "hubot-scripts": ">= 2.5.0 < 3.0.0",
    "hubot-funbox": "1.0.11"
  }
```

Then add the `hubot-funbox` entry to the `external-scripts.json` file and run `npm install`.

    ["hubot-funbox"]


## Usage
### React
To see all reactions please use hubot help.

```shell
User: hubot react high five
Hubot> https://media.giphy.com/media/9UsmgKh8bwjIs/giphy.gif
```

### Minions
Just mention minion(s) and they will appear.

### Responder

```shell
User: bad hubot
Hubot> * spits out some printer ink

User: good hubot
Hubot> * grins real big
```

### Real (Cinemagraph)
```shell
User: hubot realBeer
Hubot> http://i.imgur.com/QIys4w0.gif
```


[npm-url]: https://www.npmjs.org/package/hubot-funbox
[npm-image]: http://img.shields.io/npm/v/hubot-funbox.svg?style=flat
[travis-url]: https://travis-ci.org/TheFynx/hubot-funbox
[travis-image]: https://travis-ci.org/TheFynx/hubot-funbox.svg?branch=master
