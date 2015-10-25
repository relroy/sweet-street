Rails.configuration.stripe = {
  :publishable_key => 'pk_test_m41DzS4qS78qWSsagMwuZmEW',
  :secret_key      => 'sk_test_4PspUfjDPXfxhoHqfCisYgYU'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]