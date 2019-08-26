class MessagesController < ApplicationController
	def index
	end
	def new
		@messages = Message.new
	end

	def create
		@messages =Message.new(message_params)
	end
	 private
	 def message_params
	 	params.require(:message.permit(:title, :description))
	 end

end
