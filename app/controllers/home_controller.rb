class HomeController < ApplicationController
  def index
  end

  def email
		UserMailer.contact_message(email_params).deliver_now
	  redirect_to :back
  end

  # def show1
  # end
  # def show1
  # end
  # def show1
  # end
  private
    def email_params
      params.require(:email).permit(:subject, :from, :body)
    end 
end
