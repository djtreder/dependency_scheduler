require 'rails_helper'

describe EventController, type: :controller do
  describe '#create' do
    it 'creates a new event' do
      expected = {
        name: 'New Event',
        progress: 0.5,
        start_date: Time.now,
        end_date: Time.now + 1.hour,
        duration: 1.5
      }
      post :create, {event: expected}
      event = Event.find_by(name: expected[:name])
      expect(event.name).to eql expected[:name]
      expect(event.progress).to eql expected[:progress]
      expect(event.start_date).to be_within(1.second).of expected[:start_date]
      expect(event.end_date).to be_within(1.second).of expected[:end_date]
      expect(event.duration).to eql expected[:duration]
    end
  end

  describe '#index' do
    it 'displays the current events' do
      events = 2.times.map { |i| Event.create!(name: "event_#{i}") }
      get :index
      expect(assigns[:events]).to eql events
    end
  end
end
