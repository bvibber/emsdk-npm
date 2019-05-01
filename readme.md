# emsdk-npm

Proof of concept npm-module wrapper for [emscripten](https://emscripten.org/)'s [emsdk](https://github.com/emscripten-core/emsdk).

## What it does

Downloads emscripten SDK binaries into the local node_modules directory and makes emscripten tools easy to call from within your parent npm module's build scripts, without disturbing the user's global emscripten configuration.

## Usage

```sh
npm install --save-dev emsdk-npm
npx emsdk-checkout
npx emsdk install latest
npx emsdk activate latest
npx emsdk-run emcc test.c test.html
```

You can choose a specific release of emscripten to install by changing the `emsdk` parameters from "`latest`".

## How it works

With the `emsdk-checkout` command, emsdk is checked out via git into the module's subdirectory. The `emsdk` command is then callable , which allows installing and configuring a specific emscripten binary distribution.

The various tools like `emcc` and `em++` are then available through the `emsdk-run` command (they will not work until the '`activate`' step is done).

Note that emsdk's binary releases may not be available for all platforms, and sometimes release at different times.

Note that emsdk is used in "embedded" mode where it does not alter the user's global `~/.emscripten`, so different projects may install and use different versions of emscripten.

## Future plans

* make work on Windows
* add JS interfaces to use via Grunt etc
* add helper to auto-install an emscripten version based on parent's `package.json`
* if this is good for folks, move repo to `emscripten-core` and use a more official-sounding package name

## License

Copyright 2019 Brion Vibber

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
