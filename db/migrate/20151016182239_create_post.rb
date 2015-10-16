class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
