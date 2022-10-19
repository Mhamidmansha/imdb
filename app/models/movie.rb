class Movie < ApplicationRecord
  paginates_per 5
  has_many :actor_movies, :dependent => :destroy
  has_many :actors, through: :actor_movies
  has_many :director_movies, :dependent => :destroy
  has_many :directors, through: :director_movies
  validates :title, uniqueness: true
  validates :title, format: { with: /\A[a-zA-Z0-9\s]+\z/i, message: "can only contain letters and numbers." }
  validates_format_of :description, :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/

end
