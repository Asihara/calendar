class ParticipantsController < ApplicationController

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(participant_params)
    @participant.attributes = {
      event_id: params[:event_id],
    }
    @participant.save
    redirect_to @participant.event
  end

  def edit
    @participant = Participant.find(params[:event_id])
  end

  def update
    @participant = Participant.find(params[:event_id])
    @participant.update(participant_params)
    redirect_to @participant.event
  end

  def destroy
    @participant = Participant.find(params[:event_id])
    @participant.destroy
    redirect_to @participant.event
  end

private

  def participant_params
    params.require(:participant).permit(:user)
  end

end
