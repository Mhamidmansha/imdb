class Director < ApplicationRecord
paginates_per 5
has_many :director_movies, :dependent => :destroy
has_many :movies, through: :director_movies
validates :email, uniqueness: true
validates :age, numericality: { greater_than: 0 }
validates_format_of :first_name, :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
validates_format_of :last_name, :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/

end
