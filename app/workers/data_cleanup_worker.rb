class DataCleanupWorker
  include Sidekiq::Worker

  def perform
    Day.destroy_all
  end
end