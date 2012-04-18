# Brew Tally Node.js & AWS DynamoDB app 

This project is a Node web app (using [Express](http://expressjs.com/)) that leverages [AWS DynamoDB](http://aws.amazon.com/dynamodb/) for a datastore. It was built for an IBM developerWorks Knowledge Path. The source code is [CoffeeScript](http://coffeescript.org/) and you will need an AWS account as two environment variables (`process.env.ACCESSKEY` and `process.env.SECRETKEY`) are required for DynamoDB authentication. 

## Installation

Make sure you are on a current version of Node and have CoffeeScript installed. First grab all the required dependencies via `npm install` and then type `cake build` -- this'll create an `app.js` file in the root directory of the project. Next, type `node app.js` and don't forget to pass in or export via your shell the two variables referenced above. 

## Helpful resources

* [Just what is Node.js?](http://www.ibm.com/developerworks/opensource/library/os-nodejs/index.html)
* [Functional JavaScript with CoffeeScript and Node](http://www.ibm.com/developerworks/java/library/j-coffeescript/index.html?ca=drs-)
* [Node.js for Java developers](http://www.ibm.com/developerworks/java/library/j-nodejs/)
* [Getting started with Node.js](http://www.ibm.com/developerworks/java/library/j-nodejs/) (Video)
* [Java development 2.0: JavaScript for Java developers](http://www.ibm.com/developerworks/java/library/j-javadev2-18/index.html)
* [Ryan McGeary on CoffeeScript](http://www.ibm.com/developerworks/java/library/j-gloverpodcast2/index.html#mcgeary) (Podcast)

# License

The MIT License

Copyright (c) 2011 Andrew Glover

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE