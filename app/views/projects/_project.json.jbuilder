json.extract! project, :id, :title, :summary, :image, :tech, :comments, :created_at, :updated_at
json.url project_url(project, format: :json)
