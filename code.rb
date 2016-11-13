class PersonalizedHavocError < StandardError; end
module PartyGoer
  def initialize
    @drink = 0
  end
  def drink
    @drink += 1
    # if @drink == 4
    #   return false
    # else
    #   true
    # end    
    @drink == 4 ? false : true
  end



  def sing
    "LALALLALA"
  end

  def cause_havoc
    raise PersonalizedHavocError, "GTF0!!"
  end

  def self.include(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def invited?
      true
    end
  end
end
