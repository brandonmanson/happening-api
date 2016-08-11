class HappeningsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :happenings_users, id: false do |t|
      t.belongs_to :happening, index: true
      t.belongs_to :user, index: true
    end
  end
end
