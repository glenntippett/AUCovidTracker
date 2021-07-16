class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|

      t.timestamps
    end
  end
end
