class CreatePages < ActiveRecord::Migration[5.0]
  def up
    create_table :pages do |t|
      t.integer "subject_id"
      t.string  "name"
      t.integer "permalink"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps
    end
    #add_reference :pages, :subject, index: true
    add_foreign_key :pages, :subjects
    add_index("pages","subject_id")
  end

  def down
    drop_table :pages
  end
end
