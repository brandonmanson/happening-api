class CreateListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :list_items do |t|
      t.string :name
      t.text :description
      t.belongs_to :list

      t.timestamps
    end
  end
end
