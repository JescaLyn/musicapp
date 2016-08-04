class Album < ActiveRecord::Base
  validates :name, :band_id, :year, :kind, presence: true
  validates :kind, inclusion: { in: %w(live studio) }

  belongs_to :band
  has_many :tracks, dependent: :destroy
end
