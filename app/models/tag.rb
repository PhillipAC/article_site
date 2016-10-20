class Tag < ActiveRecord::Base
    has_many :taggeds, dependent: :destroy
    has_many :articles, through: :taggeds
end
