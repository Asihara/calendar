class Event < ApplicationRecord
  has_many :participants
  def start_time
    self.start_date
  end
end
