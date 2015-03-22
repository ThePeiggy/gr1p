class AdminController < ApplicationController
  def dashboard

  end

  def subscribers
    @subscribers = PrelaunchSubscriber.all
  end
end
