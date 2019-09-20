class CreateTalkes < ActiveRecord::Migration[6.0]
  def change
    create_table :talkes do |t|
      t.text :user
      t.text :vocabu

      t.timestamps
    end
  end
end
