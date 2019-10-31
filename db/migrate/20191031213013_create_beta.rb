class CreateBeta < ActiveRecord::Migration[5.2]
  def change
    create_table :beta do |t|
      t.string :email

      t.timestamps
    end
  end
end
