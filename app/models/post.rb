class Post < ActiveRecord::Base
   validates :title, presence: true
   validates :summary, length: {maximum: 250} 
   validates :content, length: {minimum: 250} 
   validates :category, inclusion: { in: %w(Fiction Non-Fiction),
     message: "%{value} is not a valid category" }
   # validates_presence_of :title, exclusion:  in: %w("Won't Believe", "Secret", "Top
   # [number]", or "Guess")
    validates_inclusion_of :title, :in => ["You Won't Believe These True Facts", "Won't Believe", "Secret", "Top
   [number]", "Guess"]


end