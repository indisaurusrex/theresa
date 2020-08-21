class Walk < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :user, optional: true
  has_many :comments
  has_one_attached :photo
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :coordinates_start
  validates_presence_of :user_id
end
