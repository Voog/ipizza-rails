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

View helpers
------------

It is very convenient to put together form that will be submitted for payment request to payment provider with allthemighty `ipizza_form_for` view helper.

In your controller, perhaps, declare payment object:

    @payment = Ipizza::Payment.new(
      :stamp => 123456, :amount => '15.00', :refnum => 1, :message => 'For all the candy', :currency => 'EUR'
    )

And in view file, generate form for Swedbank, for example:

    <%= ipizza_payment_form_tag @payment, :service => :swedbank do %>
      <%= submit_tag 'Pay some moneys' %>
    <% end %>

TODO:
-----

* Implement form helpers
