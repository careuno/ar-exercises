class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :check_at_least_one_apparel

  #custom validation method
  def check_at_least_one_apparel
    puts "mens_apparel #{mens_apparel}"
    if !mens_apparel.present? && !womens_apparel.present?
        errors.add :base, "can not be both empty"
    end
  end
end