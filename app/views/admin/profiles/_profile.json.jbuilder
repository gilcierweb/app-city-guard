json.extract! profile, :id, :first_name, :last_name, :full_name, :nickname, :cpf, :number, :bio, :birthday, :avatar, :status, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
