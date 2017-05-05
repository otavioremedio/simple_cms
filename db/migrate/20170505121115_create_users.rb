class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.column 'first_name', :string, :limit => 25
      # outra forma de fazer,
      t.string 'last_name', :limit => 50
      t.string 'email', :default => '', :null => false
      t.string 'password', :limit => 40
      t.timestamps
      # é a mesma coisa que
      # identifica o registro
      # t.datetime 'created_at'
      # t.datetime 'update_at'
    end
  end

  def down
    drop_table :users
  end
end
