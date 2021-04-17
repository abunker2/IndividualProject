class CreateProjectlists < ActiveRecord::Migration[5.2]
  def change
    create_table :projectlists do |t|
      t.string :username
      t.string :name
      t.string :language
      t.text :description
      t.string :status
      t.string :RepoURL
      t.string :slug

      t.timestamps
    end
    add_index :projectlists, :slug, unique: true
  end
end
