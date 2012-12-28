class WorkingBadger
  include Sidekiq::Worker

  def perform(notice)
    puts notice.class.name.inspect
    puts notice.inspect
    Honeybadger.sender.send_to_honeybadger(notice)
  end
end
