# hustler
*By Cary Landholt*

## Prerequisites
* Must have [Git](http://git-scm.com/) installed
* Must have [node.js (at least v0.8.1)](http://nodejs.org/) installed with npm (Node Package Manager)
* Install the following Node.js modules via the terminal.  This is a one-time task as the `-g` switch will install the modules globally.
  * `npm install -g grunt`
  * `npm install -g nodemon`

## Install hustler
Enter the following commands in the terminal.
* `git clone git://github.com/CaryLandholt/hustler.git`
* `cd hustler`
* `npm install`
* `grunt`

You are now ready to run the app.
However, if you wish to run the app with optimizations (minification, etc.) turned on, enter the following command in the terminal.
`grunt prod`

## Run It
* Navigate to the root of the project
* `nodemon server.coffee -w server.coffee`

You can override the default port (3005) with `nodemon server.coffee -w server.coffee {port}` where {port} represents your desired port number.

## Making Changes
* `grunt dev` will watch for any CoffeeScript (.coffee), Less (.less), or .template file changes.  When changes are detected, the files will be linted and compiled.

## To-Do
* Finish documentation