class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.belongs_to :community, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
