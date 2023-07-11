class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
<<<<<<< Updated upstream
=======
  has_many :comments

  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
>>>>>>> Stashed changes
end
