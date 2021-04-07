if Rails.env.development?
  Rails.application.config.assets.paths << Rails.root.join("public/coverage/assets")
end
