class AddDataToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :name, :string
    add_column :events, :location, :string
    add_column :events, :time, :datetime
  end
end
