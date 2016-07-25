class User < ActiveRecord::Base
  before_save(:downcase_user)

private
  def :downcase_user do
    self.first_name().downcase!
    self.last_name().downcase!
    self.track().downcase!
    self.transportation().downcase!
    self.lunch().downcase!
    self.ninth_floor().downcase!
  end
end
