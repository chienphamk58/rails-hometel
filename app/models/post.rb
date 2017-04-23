class Post < ActiveRecord::Base
    belongs_to :user
    has_many :reviews, -> { order "created_at DESC"}
    has_one :roomtype
end
