class Audition < ActiveRecord::Base
  belongs_to :role

  #methods
  #1
  # def role
  #   through the macros we already have access 
  #   to the role thorugh this Audition class relationship.
  #   So we just need to call Audition.instance(like "first").role
  #   and we get the role that actor is auditioning for.
  # end
  
  #2
  def call_back(hired)
    # binding.pry
    self.update(hired: true)
  end
end