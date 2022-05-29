class Album < ApplicationRecord
  scope :rock, -> { where(genre: "Rock") }
  has_many :songs, dependent: :destroy
  validates :name, presence: true
  has_and_belongs_to_many(:artists)


before_save(:titleize_album)

private
  def titleize_album
    self.name = self.name.titleize
  end
end