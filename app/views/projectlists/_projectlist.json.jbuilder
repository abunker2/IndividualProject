json.extract! projectlist, :id, :username, :name, :language, :description, :status, :RepoURL, :slug, :created_at, :updated_at
json.url projectlist_url(projectlist, format: :json)
