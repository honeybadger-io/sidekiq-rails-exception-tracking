Honeybadger.configure do |config|
  config.api_key = ENV['HONEYBADGER_API_KEY']
  config.development_environments = []
  config.debug = true
  config.async do |notice|
    WorkingBadger.perform_async(notice.to_json)
  end
end
