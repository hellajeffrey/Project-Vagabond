class City < ApplicationRecord
  has_many :posts, dependent: :destroy

  extend FriendlyId
  friendly_id :name, use: :slugged

attr_accessor :title, :content

  validates :title, :length => { :minimum => 1 }
  validates :title, :length => { :maximum => 200 }
  validates :photo, :presence => true
end
