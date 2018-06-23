class RunImmediatelyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.debug("I run immediately!")
  end
end
