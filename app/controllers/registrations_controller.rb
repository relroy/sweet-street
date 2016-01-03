class RegistrationsController < Devise::RegistrationsController
  def edit
    if user_signed_in?
      @user = User.find(params[:id])
      else render :file => "/public/404.html", :status => 404
    end
  end
 
end
