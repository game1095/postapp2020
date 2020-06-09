class Outbound < ApplicationRecord
  has_many :bags
  validate :check

  def self.search(search)
  	if search.blank?
  		Outbound.all
  	else
  		Outbound.where('outbound_number LIKE ?', "%#{search.downcase}%")
  	end
  end

  def name_check
  	if self.name != nil
  		return self.name
  	else
  		return "-"
  	end
  end

  def count
    self.bags.count
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
    if nakhonsawan.include?(self.destination) == true
      if self.bags[0] != nil
        if nakhonsawan.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if uthai.include?(self.destination) == true
      if self.bags[0] != nil
        if uthai.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if banlai.include?(self.destination) == true
      if self.bags[0] != nil
        if banlai.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if lansak.include?(self.destination) == true
      if self.bags[0] != nil
        if lansak.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if paisaree.include?(self.destination) == true
      if self.bags[0] != nil
        if paisaree.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if kaoliao.include?(self.destination) == true
      if self.bags[0] != nil
        if kaoliao.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if jansen.include?(self.destination) == true
      if self.bags[0] != nil
        if jansen.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if jansen.include?(self.destination) == true
      if self.bags[0] != nil
        if jansen.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if kronglan.include?(self.destination) == true
      if self.bags[0] != nil
        if kronglan.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if kampang_pdsc.include?(self.destination) == true
      if self.bags[0] != nil
        if kampang_pdsc.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if prankratai.include?(self.destination) == true
      if self.bags[0] != nil
        if prankratai.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if lankrabue.include?(self.destination) == true
      if self.bags[0] != nil
        if lankrabue.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if tak_pdsc.include?(self.destination) == true
      if self.bags[0] != nil
        if tak_pdsc.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if samngao.include?(self.destination) == true
      if self.bags[0] != nil
        if samngao.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if maesot.include?(self.destination) == true
      if self.bags[0] != nil
        if maesot.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

    if jiraprawat.include?(self.destination) == true
      if self.bags[0] != nil
        if jiraprawat.include?(self.bags[0].number[13..17]) == true
          return "black"
        else
         return "red"
        end
      else
        puts "black"
      end
    else
      puts "black"
    end

  end
end
