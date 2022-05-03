class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  scope :today, lambda { where(date: Date.today) }

  def self.delete_older_than(date)
    where('date < ?', date).delete_all
  end
end
