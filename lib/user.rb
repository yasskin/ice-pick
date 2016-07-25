class User < ActiveRecord::Base
  before_save(:downcase_user)

private
  def downcase_user
    self.first_name().downcase!
    self.last_name().downcase!
    self.track().downcase!
    self.transportation().downcase!
  end
end
