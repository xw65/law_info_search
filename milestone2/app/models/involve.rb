class Involve < ActiveRecord::Base
  belongs_to :party
  belongs_to :case
end
