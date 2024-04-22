class AddCompetitionToMatches < ActiveRecord::Migration[7.1]
  def change
    add_column :matches, :competition, :string
  end
end
