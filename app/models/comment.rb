class Comment < ApplicationRecord
	after_create :create_notifications
    belongs_to :post
    belongs_to :user
	private
	  def recipients
	  end


	  def create_notifications
	  	recipients.each do |recipient|
	  		Notification.create(recipient: recipient, actor: self.user, action: 'posted', notifiable: self)
	  	end
	  end

  
end
