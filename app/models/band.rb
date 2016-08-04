class Band < ActiveRecord::Base
  validates :name, presence: true

  has_many :albums, dependent: :destroy
  has_many :tracks, dependent: :destroy,
    through: :albums
end
