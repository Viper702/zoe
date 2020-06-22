# hubot-history

Allows Hubot to store a recent chat history for services like IRC that won't do it for you.

See [`src/history.coffee`](src/history.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-history --save`

Then add **hubot-history** to your `external-scripts.json`:

```json
[
  "hubot-history"
]
```

## Sample Interaction

```
user1>> hubot hello
hubot>> hello!
```
