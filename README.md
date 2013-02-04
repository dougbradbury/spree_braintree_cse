SpreeBraintreeCse
=================

This gem adds Braintree's client-side encryption technology
to spree's payment systems.

Obtain your client-side encryption key from Braintree
and configure your it in the admin panel. (Configuration -> Payments)

The credit card number and the verification code will be encrypted.
The real number and code with never hit your server. The encrypted
value will pass through your sever, but you have no way of reading
this value even you wanted to. Braintree uses an asymetic cypher.
Only Braintree's servers can decrypt the number. You can read more
on [Braintree's blog][1] and in their [documentation][2]

In most cases, this encryption is sufficient to obtain PCI compliance.

Example
=======

Add spree_gateway and spree_braintree_cse to your Gemfile and encryption will be enabled

       gem 'spree_braintree_cse'
       gem 'spree_gateway', :git => "https://github.com/spree/spree_gateway.git", :branch => '1-3-stable'

You may have to add the following to your rails config.

       config.assets.precompile += %w( store/braintree-1.1.1.min.js)

Dependencies
============

This gem depends on spree 1.3.x and [spree_gateway][3]


Copyright (c) 2013 [Doug Bradbury], released under the New BSD License

[1]: https://www.braintreepayments.com/braintrust/client-side-encryption
[2]: https://www.braintreepayments.com/docs/javascript/overview/client_side_encryption
[3]: https://github.com/spree/spree_gateway
