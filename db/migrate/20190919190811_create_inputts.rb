class CreateInputts < ActiveRecord::Migration[6.0]
  def change
    create_table :inputts do |t|
      t.text :message

      t.timestamps
    end
  end
end
