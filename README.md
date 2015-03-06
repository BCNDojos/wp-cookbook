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

This will install [Berkshelf](http://berkshelf.com). [Rubocop](http://batsov.com/rubocop/), [Foodcritic](http://acrmp.github.io/foodcritic/), [Chefspec](https://docs.chef.io/chefspec.html), and [Test-kitchen](http://kitchen.ci/), [Kitchen-vagrant gem](https://rubygems.org/gems/kitchen-vagrant), and all their dependencies, within your setup.

Once the dependencies have been installed, you can run the following command:

    kitchen init --driver=kitchen-vagrant

This command will create four elements:

* `.kitchen.local.yml` file.
* `.kitchen` directory.
* `.gitignore` file, which will contain `.kitchen.local.yml` and `.kitchen/`, so those two will not be included in the repository.
* `.kitchen.yml` file, containing the description of the test environment.

You should want to keep the two last files into your cookbook's repository. Of course in this tutorial, this has been already done.

## The `.kitchen.yml` file

Let's see what the `.kithen.yml` file contains:

    driver:
      name: vagrant
    
    provisioner:
      name: chef_solo

    platforms:
      - name: ubuntu-12.04
      - name: centos-6.4
    
    suites:
      - name: default
        run_list:
        attributes:
