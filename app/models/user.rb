# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6, maximum: 10 }, on: :create
  validates_presence_of :name, :password_digest, :email
end
