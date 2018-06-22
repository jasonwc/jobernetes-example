class RunImmediatelyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.debug("Hello from active job!")
  end
end
