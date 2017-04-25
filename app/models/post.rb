class Post < ActiveRecord::Base
    mount_uploader :post_picture, PostUploader
    belongs_to :user
    has_many :reviews, -> { order "created_at DESC"}
    has_one :roomtype
    has_many :post_comment#, ->{ order "create_at DESC"}
    def self.search(search)
        where("post_city LIKE ?", "%#{search}%")
    end
end
