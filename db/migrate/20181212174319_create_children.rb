class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string :name
      t.text :interests
      t.belongs_to :community, foreign_key: true

      t.timestamps
    end
  end
end
