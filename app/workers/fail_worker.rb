class FailWorker
  include Sidekiq::Worker

  def perform(name, count)
    fail 'Doing hard work'
  end
end
