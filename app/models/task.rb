class Task < ApplicationRecord
  paginates_per  3

    #  validates :name, presence: true
    #  validates :status, presence: true
    #  validates :content, presence: true
    # validates :priority, presence: true
    # validates :start_date, presence: true
    # validates :end_date, presence: true
    belongs_to :user
    def self.search(search)
      if search
      where("status LIKE ?" ,"%#{search}%")
    end
  end

 

def self.order_list(sort_order)
    if sort_order == "name"
      order(name: :desc)
    elsif sort_order == "end_date"
      order(end_date: :desc)
    else
      order(start_date: :desc)
    end
   end

   enum prior: [:low, :medium, :high]
end

def self.search(term,term1,term2)
  if term
    where('name LIKE ?', "%#{term}%")
  elsif term1
    where('name LIKE ?', "%#{term1}%")
  elsif term2
    where('name LIKE ?', "%#{term2}%")
  else
    order('id desc')
  end
end