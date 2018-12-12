class CreateBankDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_details do |t|
      t.string :address_1
      t.string :postcode
      t.string :sort_code
      t.string :account_number
      t.string :country
      t.belongs_to :sponsor, foreign_key: true

      t.timestamps
    end
  end
end
