class DeackUser < ActiveRecord::Base
  # Remember to create a migration!
  belong_to :user
  belong_to :deck
end
