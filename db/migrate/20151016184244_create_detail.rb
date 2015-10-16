class CreateDetail < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.column :name, :string
      t.column :post_id, :integer

      t.timestamps
    end
  end
end
