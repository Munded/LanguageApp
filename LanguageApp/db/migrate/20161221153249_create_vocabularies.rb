class CreateVocabularies < ActiveRecord::Migration[5.0]
  def change
    create_table :vocabularies do |t|
      t.string :english
      t.string :czech

      t.timestamps
    end
  end
end
