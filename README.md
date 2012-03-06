# logio

This is the most basic logger you could probably have in Io.
I needed something simple for a project, so I figured I may as well publish it.

This project will likely be evolving as I need more out of it - so feel free
to offer any suggestions for things you'd like to see.

## Usage

``` io
# Load path to logger
Importer addSearchPath("./lib")

# Log a few things
logger := StandardLogger clone
logger info("this is a message") # also supports error, warn, and debug
```

## Transports

The logger outputs things via "transports" so that in the future if you
wanted a file transport instead of outputting to console, you could just
swap that piece out.

`StandardLogger` comes with a `ConsoleTransport` attached to it already.

If you want to manage this yourself, you can build it like so:

``` io
logger := Logger clone do(
  transports append(ConsoleTransport clone)
)
```

## Author

John Crepezzi / Email: john.crepezzi@gmail.com

## License

(The MIT License)

Copyright © 2010-2012 John Crepezzi

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the ‘Software’), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
