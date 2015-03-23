Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
    ENV["GOOGLE_CLIENT_ID"],
    ENV["GOOGLE_CLIENT_SECRET"],
    {
      callback_path: '/admin/auth/google_oauth2/callback',
      prompt: :consent,
      path_prefix: '/admin/auth'
    }
end
