class Bag < ApplicationRecord
  belongs_to :outbound
  validate :check
  validates :number , presence: true , length: {in: 18..18} , uniqueness: true

  def number_check
    if self.number
      return self.number[0..6]+" "+self.number[7]+" "+self.number[8..12]+" "+self.number[13..17]
    else
      return "-"
    end

  end
  def origin
    number = self.number
    number[8..12]
  end
  def destination
    number = self.number
    number[13..17]
  end

  def service
    number = self.number
    number[7]
  end

  #check destination number
  def check
    #array for nakhon sawan mail center
    nakhonsawan = ["60000"]
    uthai = ["61000" , "60130"]
    banlai = ["61110" , "61130" , "61140" , "61170" , "61180"]
    lansak = ["60001" , "60170" , "61120" , "61150" , "61160"]
    paisaree = ["60120" , "60110" , "60160" , "60220" , "60250"]
    kaoliao = ["60240" , "60150" , "60180" , "60230"]
    jansen = ["60140" , "60190" , "60210" , "60260"]
    kronglan = ["62140" , "62130" , "62210" , "62120" , "62180" , "00286"]
    kampang_pdsc = ["62000" , "00089" , "00094"]
    prankratai = ["62160" , "62000" , "00089" , "00094" , "62110"]
    lankrabue = ["62190" , "62150" , "62170"]
    tak_pdsc = ["63000"]
    samngao = ["63180" , "63000" , "63120" , "63130"]
    maesot = ["63110" , "63111" , "63140" , "63150" , "63160" , "63170" , "00058"]
    jiraprawat = ["60002"]

    # check condition

    # Nakhon Sawan
    if nakhonsawan.include?(self.outbound.destination.to_s) == true
      if nakhonsawan.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    # Uthai
    if uthai.include?(self.outbound.destination.to_s) == true
      if uthai.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    # Ban Lai
    if banlai.include?(self.outbound.destination.to_s) == true
      if banlai.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end
    
    # lan Sak
    if lansak.include?(self.outbound.destination.to_s) == true
      if lansak.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    #paisaree
    if paisaree.include?(self.outbound.destination.to_s) == true
      if paisaree.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    #kaoliao 
    if kaoliao.include?(self.outbound.destination.to_s) == true
      if kaoliao.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    #jansen
    if jansen.include?(self.outbound.destination.to_s) == true
      if jansen.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    #kronglan
    if kronglan.include?(self.outbound.destination.to_s) == true
      if kronglan.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end
    
    #kampang_pdsc
    if kampang_pdsc.include?(self.outbound.destination.to_s) == true
      if kampang_pdsc.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    #prankratai
    if prankratai.include?(self.outbound.destination.to_s) == true
      if prankratai.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    #lankrabue
    if lankrabue.include?(self.outbound.destination.to_s) == true
      if lankrabue.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end
    
    #tak_pdsc
    if tak_pdsc.include?(self.outbound.destination.to_s) == true
      if tak_pdsc.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end
    #samngao
    if samngao.include?(self.outbound.destination.to_s) == true
      if samngao.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    #maesot_1
    if maesot.include?(self.outbound.destination.to_s) == true
      if maesot.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end

    #jiraprawat
    if jiraprawat.include?(self.outbound.destination.to_s) == true
      if jiraprawat.include?(self.destination.to_s) == true
        puts "TRUE"
      else
        errors.add(:duration,"ผิดปลายทาง")
      end
    end 
  
  end
end
