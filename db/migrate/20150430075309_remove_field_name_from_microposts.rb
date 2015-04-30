class RemoveFieldNameFromMicroposts < ActiveRecord::Migration
  def change
    remove_column :microposts, :user_id, :integer
  end
end
