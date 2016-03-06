class User < ActiveRecord::Base

  def self.create_100
    100.times do
      User.create(name: FFaker::Name.name)
    end
  end
end
