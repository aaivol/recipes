json.extract! post, :id, :name, :author, :time, :ingr, :way, :picname, :created_at, :updated_at
json.url post_url(post, format: :json)
