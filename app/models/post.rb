class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, through: :post_tags
  belongs_to :user
  validates :name, presence: true
  validates :content, presence: true

  accepts_nested_attributes_for :tags, reject_if: proc { |attributes| attributes['name'].blank? }

end
