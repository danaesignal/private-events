class RemoveCreatorFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :creator
  end
end
