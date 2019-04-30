class AddUrlToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :url, :string
    add_column :projects, :code_url, :string
  end
end
