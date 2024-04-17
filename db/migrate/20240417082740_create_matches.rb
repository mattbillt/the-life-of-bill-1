class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.string :name
      t.string :date
      t.string :location
      t.string :review

      t.timestamps
    end
  end
end
