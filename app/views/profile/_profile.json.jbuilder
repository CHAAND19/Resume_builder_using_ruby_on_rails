json.extract! profile, :id, :name, :job_title, :total_experience, :career_highlights, :overview, :primary_skill, :secondar_skill, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
