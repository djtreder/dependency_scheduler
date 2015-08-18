When(/I create a new event/) do
  Event.create!(name: 'New Event')
end

Then(/that event should exist/) do
  event = Event.find_by(name: 'New Event')
  expect(event.name).to eql 'New Event'
end
