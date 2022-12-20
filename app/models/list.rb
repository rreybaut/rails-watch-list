class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo # Ajout
  validates :name, uniqueness: true, presence: true
end
