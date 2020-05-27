class Bag < ApplicationRecord
  belongs_to :outbound
  validates :number , presence: true , length: {in: 18..18} 
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

  def sub_destination
    number = self.number
    number[13..14]
  end

  def check
    # in area
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

    #mail center
    ems_mailcenter = ["10","11","12","73","74"]
    autthaya = ["13","14","15","16","17","18"]
    sriracha = ["20","21","22","23"]
    krabinburi = ["24","25","26","27"]
    nakornratchasrima = ["30","31","32","36"]
    lamphun = ["50","51","58"]
    denchai = ["52","53","54","55","56","57"]
    ratchaburi = ["70","71","72","75","76","77"]

    # check condition
    if nakhonsawan.include?(self.outbound.destination.to_s) == true
      if nakhonsawan.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if uthai.include?(self.outbound.destination.to_s) == true
      if uthai.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if lansak.include?(self.outbound.destination.to_s) == true
      if lansak.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if paisaree.include?(self.outbound.destination.to_s) == true
      if paisaree.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if kaoliao.include?(self.outbound.destination.to_s) == true
      if kaoliao.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if jansen.include?(self.outbound.destination.to_s) == true
      if jansen.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if kronglan.include?(self.outbound.destination.to_s) == true
      if kronglan.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if kampang_pdsc.include?(self.outbound.destination.to_s) == true
      if kampang_pdsc.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if prankratai.include?(self.outbound.destination.to_s) == true
      if prankratai.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if lankrabue.include?(self.outbound.destination.to_s) == true
      if lankrabue.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if tak_pdsc.include?(self.outbound.destination.to_s) == true
      if tak_pdsc.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if samngao.include?(self.outbound.destination.to_s) == true
      if samngao.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if maesot.include?(self.outbound.destination.to_s) == true
      if maesot.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if jiraprawat.include?(self.outbound.destination.to_s) == true
      if jiraprawat.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end

    if banlai.include?(self.outbound.destination.to_s) == true
      if banlai.include?(self.destination.to_s) == true
        return "black"
      else
        return 'red'
      end
    end 

  end
end
