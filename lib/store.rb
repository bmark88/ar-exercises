class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :contains_apparel

  def contains_apparel
    errors.add(:new_stores, "must carry mens or womens apparel") if !mens_apparel && !womens_apparel
  end

  private
  
    before_destroy :empty?

    def empty?
      if self.employees.size > 0
        raise "Error! You're trying to delete a store with employees."
      end
    end

end