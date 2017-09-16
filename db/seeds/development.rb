model_names = %w(spot)

model_names.each do |model_name|
  path = Rails.root.join('db', 'seeds', Rails.env, "#{model_name}.rb")
  require path if File.exists?(path)
end
