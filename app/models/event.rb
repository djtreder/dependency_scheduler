class Event < ActiveRecord::Base
  has_many :dependencies
end
