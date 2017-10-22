class AddCountToApp < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :count, :integer
  end
end
