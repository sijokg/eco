class Event < ActiveRecord::Base
  belongs_to :status

  validates :name, presence: true
  validates :title, presence: true
end
