class Gossip < ApplicationRecord
	belongs_to :user
	has_many :gossip_tag_lists
	has_many :comments
	has_many :likes
	has_many :tags, through: :gossip_tag_lists
end
