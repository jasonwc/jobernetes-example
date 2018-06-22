class HomeController < ApplicationController
  def index
  end

  def enqueue_now
    RunImmediatelyJob.perform_now
    render :index
  end
end
