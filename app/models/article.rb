class Article < ApplicationRecord
  has_many :comments, -> { order('created_at DESC') }, class_name: 'Comment'
  validates_associated :comments
  validates :title, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :text, presence: true
end