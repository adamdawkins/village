class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :location
      t.belongs_to :country, foreign_key: true

      t.timestamps
    end
  end
end
