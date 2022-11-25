class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    #Post summary is a maximum of 250 characters
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :is_clickbait
   
    def is_clickbait
        if title == "True Facts"
            errors.add(:title, "Title is Invalid")
        end
    end
    
    #Custom validation
    
end
