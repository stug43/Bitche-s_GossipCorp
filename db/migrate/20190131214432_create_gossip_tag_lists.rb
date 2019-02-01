class CreateGossipTagLists < ActiveRecord::Migration[5.2]
  def change
    create_table :gossip_tag_lists do |t|
			t.belongs_to :tag, :gossip, index: true
			
      t.timestamps
    end
  end
end
