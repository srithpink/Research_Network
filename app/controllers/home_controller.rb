class HomeController < ApplicationController
  
  has_many :notifications, foreign_key: :recipient_id
    def index
  		@users = User.all
    end
end




   

