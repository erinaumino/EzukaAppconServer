class AddTeamNameToApp < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :team_name, :string
  end
end
