class Post < ApplicationRecord
  has_rich_text :ingr
  has_rich_text :way
  validates :name, :author, presence: true
  validates :name, uniqueness: true
end
