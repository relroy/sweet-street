class User < ActiveRecord::Base

  validates :password, length: { minimum: 6 }, allow_blank: true
  after_create :send_admin_email, :send_user_email

  # after_create :send_admin_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders

  

  def send_admin_email
   
    UserMailer.signin_confirmation(@admin, business, first_name, last_name, address, city, state, zip_code, email, phone, id).deliver
   
  end

  def send_user_email

    UserMailer.new_inquiry(@admin, business, first_name, last_name, address, city, state, zip_code, email, phone, id).deliver
    
    
  end

  # def send_admin_email

  #   UserMailer.signin_confirmation(@user).deliver 
    
  # end
end
