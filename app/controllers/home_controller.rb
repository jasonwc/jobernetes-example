class HomeController < ApplicationController
  def index
  end

  def enqueue_now
    RunImmediatelyJob.perform_now
    redirect_to root_url
  end

  def enqueue_later
    RunLaterJob.perform_later
    redirect_to root_url
  end
end
