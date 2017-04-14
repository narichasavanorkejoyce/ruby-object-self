# frozen_string_literal: true

# Define a Person class
class Person
  # setter
  attr_reader :status

  # initialize status
  def initialize
    @status = nil
  end

  # set status equal to new status
  def status=(new_status)
    @status = new_status

    # Side Effect of changing a Person's status is to say it
    # %x(`say` "Status changed to #{status}")
  end

  # when you invoke log-in method, status will be set to 'online'
  def log_in
    # run the status=() method
    # run the custom setter that we have defined above
    # self.status('online')
    self.status = 'online'
  end

  # when you invoke log-out method, status will be set to 'offline'
  def log_out
    # Problem:
    # Will not call the setter method to and notify -- nor say --
    # that the status
    # has changed!
    self.status = 'offline'
  end
end
