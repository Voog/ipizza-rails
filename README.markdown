Adds iPizza support to Rails 3 applications. Provides rails generators and easy configuration loading.

Installation
------------

In your Gemfile add ipizza-rails gem:

    gem ipizza-rails

Usage
-----

To start using iPizza in your rails application, you need to run the **init** generator first:

    rails generate ipizza:init

This will create an example configuration file to `config/ipizza.yml` and create `config/certificates` directory and
puts some test certificates into it.

TODO:
-----

* Implement form helpers
