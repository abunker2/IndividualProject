class Projectlist < ApplicationRecord
    validates_presence_of :username, :name, :language, :description, :status, :RepoURL
end
