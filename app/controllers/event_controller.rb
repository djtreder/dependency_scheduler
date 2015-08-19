class EventController < ApplicationController
  def create
    Event.create!(event_attributes)
    redirect_to event_index_path
  end

  def index
    @events = Event.all.to_a
  end

  def new
  end

  private

  def event_attributes
    params.require(:event).permit(:name, :progress, :start_date, :end_date, :duration)
  end
end
