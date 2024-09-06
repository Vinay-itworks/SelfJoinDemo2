class Student < ApplicationRecord
  has_many :friends_with, class_name: "Student", foreign_key: "friend_id"
  belongs_to :friend, class_name: "Student", optional: true
end
