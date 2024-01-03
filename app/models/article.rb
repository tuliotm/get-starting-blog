class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy
  
  validates :title, presence: true, uniqueness: { case_sensitive: false }
  validates :body, presence: true, length: { minimum: 10 }
end
