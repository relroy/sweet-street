class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # after_create :signin_confirmation

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signin_confirmation.subject
  #
  def signin_confirmation(admin, business, first_name, last_name, address, city, state, zip_code, email, phone, id)
    @admin = 'relroy5499@gmail.com'
    @business = business
    @first_name = first_name
    @last_name = last_name
    @address = address
    @city = city
    @state = state
    @zip_code = zip_code
    @email = email
    @phone = phone
    @id = id

    mail to: @email, subject: "New Wholesale account inquiry!"
  end

  def new_inquiry(admin, business, first_name, last_name, address, city, state, zip_code, email, phone, id)
    @admin = 'relroy5499@gmail.com'
    @business = business
    @first_name = first_name
    @last_name = last_name
    @address = address
    @city = city
    @state = state
    @zip_code = zip_code
    @email = email
    @phone = phone
    @id = id
    attachments.inline['sweet_logo.png'] = File.read('app/assets/images/sweet-logo.png')

    mail to: 'relroy5499@gmail.com', subject: "New Inquiry!"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order_submission.subject
  #
  def order_submission(order)
    @admin = 'relroy5499@gmail.com'
    @order = order
    attachments.inline['sweet_logo.png'] = File.read('app/assets/images/sweet-logo.png')
    mail to: @admin, subject: "New Order!"
  end

  def order_confirmation(order)
    
    @order = order
    attachments.inline['sweet_logo.png'] = File.read('app/assets/images/sweet-logo.png')
    mail to: @order.user.email, subject: "Your order confirmation for Sweet Street!"
  end

end
