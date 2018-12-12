class CreateSponsorships < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsorships do |t|
      t.belongs_to :sponsor, foreign_key: true
      t.belongs_to :child, foreign_key: true

      t.timestamps
    end
  end
end
