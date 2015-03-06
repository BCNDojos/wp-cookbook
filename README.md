# wp-cookbook

Chef Cookbook to install WP for the DevOps BCN workshop

## Requirements

In order to follow the workshop in this repository, you should have installed the following:

* [VirtualBox](http://virtualbox.org) 4.3.20r96996 or newer
* [Vagrant](http://vagrantup.com) 1.7.2 or newer
* [Ruby](http://ruby-lang.org) 2.1.5 or newer

If you have [RVM](http://rvm.io), you will need to have Ruby 2.1.5 installed and it will create the gemset automagically.
Once the Ruby stack is installed, you should run `bundle install` within the repository directory.

## Setup

In order to setup your environment, you should run, within the repository:

    bundle install

This will install [Berkshelf](http://berkshelf.com). [Rubocop](http://batsov.com/rubocop/), [Foodcritic](http://acrmp.github.io/foodcritic/), [Chefspec](https://docs.chef.io/chefspec.html), and [Test-kitchen](http://kitchen.ci/), and all their dependencies, within your setup.
