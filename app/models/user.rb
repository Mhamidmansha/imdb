class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validate :password_requirements_are_met
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/


    def password_requirements_are_met
      rules = {
        " must contain at least one lowercase letter"  => /[a-z]+/,
        " must contain at least one uppercase letter"  => /[A-Z]+/,
        " must contain at least one digit"             => /\d+/,
        " must contain at least one special character" => /[^A-Za-z0-9]+/
              }

      rules.each do |message, regex|
        errors.add( :password, message ) unless password.match( regex )
      end
    end
end
