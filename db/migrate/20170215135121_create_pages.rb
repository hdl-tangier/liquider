class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :action
      t.text :template

      t.timestamps
    end
  end
end
