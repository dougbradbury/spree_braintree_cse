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

Just add spree_braintree_cse to your Gemfile and encryption will be enabled. Since rubygems.org
is not allowing new gems to be posted at the moment, use the git url for this gem.

       gem 'spree_braintree_cse', :git => 'https://github.com/dougbradbury/spree_braintree_cse.git'

You may have to add the following to your rails config.

       config.assets.precompile += %w( store/braintree-1.1.1.min.js)


Copyright (c) 2013 [Doug Bradbury], released under the New BSD License

[1]: https://www.braintreepayments.com/braintrust/client-side-encryption
[2]: https://www.braintreepayments.com/docs/javascript/overview/client_side_encryption
