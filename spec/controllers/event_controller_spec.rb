require 'rails_helper'

describe EventController, type: :controller do
  describe '#create' do
    it 'creates a new event' do
      post :create
    end
  end
end
