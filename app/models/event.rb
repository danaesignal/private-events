class Event < ApplicationRecord
  has_many :invites
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :attendees, through: :invites

  def self.upcoming
    where("time > ?", DateTime.now)
  end

  def self.past
    where("time < ?", DateTime.now)
  end
end
