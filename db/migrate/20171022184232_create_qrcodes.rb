class CreateQrcodes < ActiveRecord::Migration[5.1]
  def change
    create_table :qrcodes do |t|
      t.string :uid
      t.boolean :inVoted

      t.timestamps
    end
  end
end
