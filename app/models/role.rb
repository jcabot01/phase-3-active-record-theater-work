class Role < ActiveRecord::Base
  has_many :auditions   #one to many

  #methods
  #1
  # def auditions  //using MACROS we already have access to this
  #   self.auditions
  # end

  # #2
  def actors  #//wants an array returned, need .map
      # binding.pry
      self.auditions.map {|audition| audition.actor}
  end

  # #3 
  def locations
    self.auditions.map {|audition| audition.location}
  end

  # #4 
  def lead
    # binding.pry
    # self.auditions.find_by(hired: true) #// or use .where().first
      if self.auditions.find_by(hired: true)
        return self.auditions.find_by(hired: true).first
      else
        return 'no actor has been hired for this role'
      end
  end

  # #5
  def understudy
    binding.pry
    understudy_role = self.auditions.where(hired: true).second
    if understudy_role
      understudy_role
    else
      return 'no actor has been hired for understudy for this role'
    end
  end

end