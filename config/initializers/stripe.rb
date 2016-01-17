Rails.configuration.stripe = {
  :publishable_key => 'pk_test_CKyEeLXoBBYOWJAUVzszev1z',
  :secret_key      => 'sk_test_avCtiEMWF5mO6PFjvyBwcmLY'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]