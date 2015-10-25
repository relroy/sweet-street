class User < ActiveRecord::Base

  after_create :send_admin_email, :send_user_email

  # after_create :send_admin_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders

  def update_with_password(params, *options)
    current_password = params.delete(:current_password)

if params[:password].blank?
  params.delete(:password)
  params.delete(:password_confirmation) if params[:password_confirmation].blank?
end

result = if params[:password].blank? || valid_password?(current_password)
  update_attributes(params, *options)
else
  self.assign_attributes(params, *options)
  self.valid?
  self.errors.add(:current_password, current_password.blank? ? :blank : :invalid)
  false
end

    clean_up_passwords
    result
end

  def send_admin_email
   
    UserMailer.signin_confirmation(@admin, business, first_name, last_name, address, city, state, zip_code, email, phone, id).deliver
    puts 'Hi, it works!!!'
  end

  def send_user_email

    UserMailer.new_inquiry(@admin, business, first_name, last_name, address, city, state, zip_code, email, phone, id).deliver
    puts 'Hi, this works too!!!'
    
  end

  # def send_admin_email

  #   UserMailer.signin_confirmation(@user).deliver 
    
  # end
end
