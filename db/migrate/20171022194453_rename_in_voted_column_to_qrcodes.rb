class RenameInVotedColumnToQrcodes < ActiveRecord::Migration[5.1]
  def change
    rename_column :qrcodes, :inVoted, :isVoted
  end
end
