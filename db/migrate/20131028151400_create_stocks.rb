
class CreateStocks < ActiveRecord::Migration
  def change
    create_table(:stocks) do |t|
      t.string :name
      t.integer :price
      t.string :sector
    end
  end
end
