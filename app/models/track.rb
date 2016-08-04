class Track < ActiveRecord::Base
  validates :name, :album_id, :ord, :kind, :lyrics, presence: true
  validates :kind, inclusion: { in: %w(standard bonus) }

  belongs_to :album
  has_one :band,
    through: :album
  has_many :notes
end
