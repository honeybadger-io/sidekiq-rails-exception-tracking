class FailWorker
  include Sidekiq::Worker

  def perform(name, count)
    Honeybadger.context({ :time => Time.now, rand => 'value' })
    fail 'Doing hard work'
  end
end
