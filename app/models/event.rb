class Event < ActiveRecord::Base
  attr_accessible :description, :location, :title, :when
end
