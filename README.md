# Autoformat for Aegisub

Autoformat is an Automation script for [Aegisub](http://www.aegisub.org/) that performs various typographic tasks for optimized subtitle readability. The main feature is advanced line breaking, but it can also do character replacement for dashes, quotes and ellipses, advanced spacing for italics & numbers as well as make fake italics look nicer.

## Installation

Drop `autoformat.lua` into your Aegisub's `automation/autoload` directory. (Currently unavailable.)

## Usage

Autoformat can be configured with a specific comment line anywhere in the script (though it is recommended to stick it at the top). This command has the following format:

```
AUTOFORMAT option1: true/false option2: true/false
```

(Currently unavailable.)

## Development Prerequisites

To develop Autoformat, you need the following:

1. Install Lua or [LuaJIT](http://luajit.org/).
2. Install [LuaRocks](http://luarocks.org/). (On Windows, it can install Lua for you.)
3. Install [MoonScript](http://moonscript.org/) and [Busted](http://olivinelabs.com/busted/) with LuaRocks (`luarocks install moonscript` and `luarocks install busted`). You'll likely need to build binary modules for this, so you're going to need a compiler - an easy solution on Windows is to install [MinGW](http://www.mingw.org/).
4. Install [Node.js](http://nodejs.org/).
5. Fork and clone the repository.
6. Navigate to your cloned repo and install node dependencies with `npm install`. (That sure was easy compared to Lua, eh?)
7. (Optional) Install [LiveScript](http://livescript.net/) globally with `npm install -g LiveScript`

## Development

If you installed LiveScript, you can now use `slake` tasks for the project. These tasks are:

* `slake build`: Compile *.moon files to lib/*.lua.
* `slake test`: Run unit tests with Busted.
* `slake watch`: Watch the project files and build/test on changes.

If you didn't install LiveScript, you can access the previous commands with `npm run-script build`, `npm test` and `npm start`. 