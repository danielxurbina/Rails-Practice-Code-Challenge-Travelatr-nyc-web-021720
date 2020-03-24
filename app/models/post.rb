class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination
  validates :title, presence: true
  validates :content, length: { minimum: 100 }

  def post_blogger=(name)
    self.blogger = Blogger.find_or_create_by(name: name)
  end

  def post_blogger
    blogger.try(:name)
  end

  def like_counter
    count = 0
  end
end