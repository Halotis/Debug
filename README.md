Debug
============

A tiny debugging utility

## Example

```swift
import Debug

let debug = Debugger('app')

debug('doing some stuff')

```

Use the DEBUG environment variable to enable debug messages:

```bash
$ DEBUG=app ./app

app doing some stuff
```

## License

  MIT
