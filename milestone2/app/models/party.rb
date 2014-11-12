class Party < ActiveRecord::Base
  has_many :involves
  has_many :cases, :through => :involves
end
