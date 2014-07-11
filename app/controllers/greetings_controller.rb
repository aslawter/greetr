class GreetingsController < ApplicationController
  def create
    @greeting = current_user.sent_greetings.create(greeting_params)
    Pusher.trigger("Andrew-channel", "new_greeting", {:message => "you just sent a greeting"})
    redirect_to :dashboard 
  end

  private

  def greeting_params
    params.require(:greeting).permit(
      :message,
      :receiver_id,
    )
  end
end
