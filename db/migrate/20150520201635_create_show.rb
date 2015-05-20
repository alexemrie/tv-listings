class CreateShow < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name, null: false
    end
  end
end
