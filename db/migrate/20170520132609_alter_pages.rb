class AlterPages < ActiveRecord::Migration[5.0]
  def up
    change_column("pages","permalink", :string, :limit => 100)
  end

  def down
    change_column("pages","permalink", :integer)
  end
end
