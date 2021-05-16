class AddImageIdToMemories < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :image_id, :string
  end
end
