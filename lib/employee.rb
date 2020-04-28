class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store_id, presence: true

  private

  before_save :create_password

  def create_password
    self.password = "asdf1234" if password.blank?
  end
end
