class Case < ActiveRecord::Base
  has_many :involves
  has_many :parties, :through => :involves
end
