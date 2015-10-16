class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :description, :string
      t.column :detail_id, :integer

      t.timestamps
    end
  end
end
