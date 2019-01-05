json.extract! client, :id, :date, :birthdate, :isclientof, :active, :lastname, :firstname, :title, :callname, :email, :warning, :created_at, :updated_at
json.url client_url(client, format: :json)
