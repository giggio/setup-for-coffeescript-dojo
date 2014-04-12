# How to do a dojo using CoffeeScript, Nodejs, and Grunt

I wanted to do work in a way that I could have, in the same terminal, the test and app code, one in each
vim split, and on the bottom the test results. This is what I got to:

![Dependencies](https://raw.githubusercontent.com/giggio/setup-for-coffeescript-dojo/master/csdojoresult.png)


## This is how I got it

I am using [Gnome Terminator](http://gnometerminator.blogspot.com.br/). I also tried GNU Screen, and it works well,
but Terminator is easier to use, and it has additional nice features.
This allows me to split my terminal window, and then I run ./watchTestOutput there, which is basically:

    watch -cn 1 cat output.tap

This will keep reloading the contents of [output.tap](https://github.com/giggio/setup-for-coffeescript-dojo/blob/master/output.tap),
which is where mocha is saving its test results.

On the top split I open vim, and there I split the window, test to left, app code to the right. Then run `grunt`, on a different terminal.

Grunt is basically watching the CoffeeScript files. When one of them changes it runs the tests using Mocha.
Mocha is requiring the CoffeeScript compiler, so I don't need to compile them before running the tests.
Checkout the [Gruntfile](https://github.com/giggio/setup-for-coffeescript-dojo/blob/master/Gruntfile.coffee)
to get a better idea, it is very simple.

## How to setup

* Install Terminator (you can get my config [here](https://gist.github.com/giggio/10562032)).
* Clone this repo: `git clone https://github.com/giggio/setup-for-coffeescript-dojo.git`.
* Install nodejs (if you still hadn't, really??): downloads [here](http://nodejs.org/download/),
but for dev prefer [nvm](https://github.com/creationix/nvm) if you are using Linux.
* `npm install`
* Open a terminal, split the windows with `CTRL-SHIFT-O` (run `man terminator` to find other shortcuts), you can
use the mouse to adjust the split.
* Open Vim on the top split, split the window with test on one side and app code on the other.
* On the bottom screen run `./watchTestOutput`.
* On a different terminal run `grunt`.

## Maintainers

* [Giovanni Bassi](http://blog.lambda3.com.br/L3/giovannibassi/), [Lambda3](http://www.lambda3.com.br), [@giovannibassi](http://twitter.com/giovannibassi)

## License

This software is open source, [licensed at GPL V2](https://github.com/giggio/setup-for-coffeescript-dojo/blob/master/LICENSE.txt).
Check out the terms of the license before you contribute, fork, copy or do anything
with the code. If you decide to contribute you agree to grant copyright of all your contribution to this project, and agree to
mention clearly if do not agree to these terms. Your work will be licensed with the project at GPL V2, along the rest of the code.
