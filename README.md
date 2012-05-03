Melomel Examples
=============================================

[![Dependency Status](https://gemnasium.com/benbjohnson/melomel-examples.png)](https://gemnasium.com/benbjohnson/melomel-examples)

## DESCRIPTION

This repository is a collection of various
[Melomel](http://github.com/benbjohnson/melomel) examples. This code should be
an example of how to get started using Melomel.

The following examples are available:

* `cuke-spark` - Flex 4 Spark testing using Cucumber.
* `cuke-spark-air` - Desktop AIR application testing using Cucumber.


## GETTING STARTED

Each project has an individual `README` file for instructions on how to get the
project running. However, there are a couple steps you must complete for all
example projects.

First, install [Ruby](http://www.ruby-lang.org).

Next clone the examples repository:

	git clone git://github.com/benbjohnson/melomel-examples.git
	
Then install Bundler and the gem dependencies:

	cd melomel-examples/
	[sudo] gem update --system
	[sudo] gem install bundler
	[sudo] bundle install

Make sure you have Flex 4 installed and that you have an environment variable
named `FLEX_HOME` set to its path.

The examples use Google Chrome for testing so you will need to install it before
running your tests.

Finally, follow the steps included for the specific example you're working with.
