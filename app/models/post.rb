class Post < ApplicationRecord
  has_many :comments
  belongs_to :authorable, polymorphic: true

  validates_presence_of :title
  validates_presence_of :content
end
