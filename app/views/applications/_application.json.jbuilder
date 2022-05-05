json.extract! application, :id, :username, :email, :phonenumber, :description, :created_at, :updated_at
json.url application_url(application, format: :json)
