class PagesController < ActionController::Base
  def home
    render text: 'home'
  end
end
