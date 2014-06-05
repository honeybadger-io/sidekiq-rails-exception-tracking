class SlowWorker
  include Sidekiq::Worker

  def perform(delay)
    sleep(delay)
  end
end
