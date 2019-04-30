class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :summary
      t.string :image
      t.text :tech
      t.text :comments

      t.timestamps
    end
  end
end
