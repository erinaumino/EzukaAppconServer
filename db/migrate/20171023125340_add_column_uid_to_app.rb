class AddColumnUidToApp < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :uid, :string
  end
end
