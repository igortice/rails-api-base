class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.date :birth
      t.string :cpf, unique: true
      t.string :name

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
