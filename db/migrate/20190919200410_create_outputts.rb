class CreateOutputts < ActiveRecord::Migration[6.0]
  def change
    create_table :outputts do |t|
      t.text :message

      t.timestamps
    end
  end
end
