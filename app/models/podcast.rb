class Podcast < ApplicationRecord

  belongs_to :topic
  has_many :personal_notes

end
