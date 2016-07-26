class User < ActiveRecord::Base
  before_save(:downcase_user)

<<<<<<< HEAD


  

  private
    def downcase_user
      self.first_name().downcase!
      self.last_name().downcase!
      self.track().downcase!
      self.transportation().downcase!
    end
=======
private
  def downcase_user
    self.first_name().downcase!
    self.last_name().downcase!
    self.track().downcase!
    self.transportation().downcase!
  end
>>>>>>> 050cd3e151e4cccc537219013a763d1c262aa658
end
