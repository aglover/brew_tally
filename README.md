# Brew Tally Node.js & AWS DynamoDB app 

This project is a Node web app (using [Express](http://expressjs.com/)) that leverages [AWS DynamoDB](http://aws.amazon.com/dynamodb/) for a datastore. It was built for an IBM developerWorks Knowledge Path. The source code is [CoffeeScript](http://coffeescript.org/) and you will need an AWS account as two environment variables (`ACCESSKEY` and `SECRETKEY`) are required for DynamoDB authentication. 

## Installation 

Make sure you have a current version of Node. I recommend [NVM](http://thediscoblog.com/blog/2013/03/12/node-in-3-commands/). Then `cd` into the root of this project and type:

`$> npm install`

Next, make sure you have Coffeescript in your path -- just install it for your current installation of Node:

`$> sudo npm install -g coffee-script`


Finally, make sure you have Ruby & Foreman (what if you don't? Install [Heroku Toolbelt](https://toolbelt.heroku.com/) as that'll give it to you) and then type:

`$> foreman start`

Boom. Done. 


## Running the tests

This project uses [Mocha](http://visionmedia.github.com/mocha/) and [should](https://github.com/visionmedia/should.js) -- to run these tests, type `cake test`.

## Helpful resources

* [Just what is Node.js?](http://www.ibm.com/developerworks/opensource/library/os-nodejs/index.html)
* [Functional JavaScript with CoffeeScript and Node](http://www.ibm.com/developerworks/java/library/j-coffeescript/index.html?ca=drs-)
* [Node.js for Java developers](http://www.ibm.com/developerworks/java/library/j-nodejs/)
* [Getting started with Node.js](http://public.dhe.ibm.com/software/dw/demos/jnodejs/index.htm) (Video)
* [Java development 2.0: JavaScript for Java developers](http://www.ibm.com/developerworks/java/library/j-javadev2-18/index.html)
* [Ryan McGeary on CoffeeScript](http://www.ibm.com/developerworks/java/library/j-gloverpodcast2/index.html#mcgeary) (Podcast)

# License

The MIT License

Copyright (c) 2011 Andrew Glover

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE