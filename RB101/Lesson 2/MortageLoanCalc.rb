  def prompt(message)
    puts("=> #{message}")
  end

  def valid_number?(num)
    integer?(num) || fac?(num)
  end

  def integer?(input)
    input.to_i.to_s == input
  end

  def fac?(input)
    input.to_f.to_s == input
  end

  loanAmount = ''
  apr = ''
  loanDuration = ''
  trigger = ''
  yearlycheck = ''

  prompt("Welcome to the the Mortage Loan Calculator.")
  
  loop do 
    if trigger == "T"
      break
    end
    
    prompt("Were gonna need the loan amount (Whole Numbers only)" )
    
    loop do
      loanAmount = gets.chomp
      #ValidChecker
      
      if valid_number?(loanAmount)
        break
      else
        prompt("add a valid numbers. WHOLE NUMBERS ONLY!")
      end
    end
    
    prompt("Now we need your Annual Percentage Rate(APR) in Percentage")

    loop do
      apr = gets.chomp

      if valid_number?(apr)
        break
      else
        prompt("add valid numbers only")
      end
    end
    
    prompt("Lastly, the loan duration")

    loop do
      loanDuration = gets.chomp

      if valid_number?(loanDuration)
        break
      else
        prompt("add valid numbers only")
      end
    end

    prompt("Which did you enter, Monthly Or Yearly Duration?('m' for monthly and 'y' for Yearly)")
    
    loop do
      moy = gets.chomp

      if moy.downcase == 'm'
        break
      elsif moy.downcase == 'y'
        yearlycheck = "t"
        break
      else
        prompt("Hmmm... I need a better answer than that... 'm' for monthly 'y' for yearly")
      end
    end
   
    #In loop calculations
    apr = apr.to_f * 0.01 
    mpr = apr.to_f / 12
    monthlypayrate = mpr * loanAmount.to_i  
    if yearlycheck == 't'
      loanDuration = loanDuration.to_i * 12
    end
    
    m = loanAmount.to_i * (mpr / (1 - (1 + mpr)**(-loanDuration.to_i)))
    prompt("monthly payment will be $#{m.round(2)} ")

    #Ending
    loop do
      prompt("Would you like to repeat and continue (Y/N)")
      repeatA = gets.chomp
      if repeatA.downcase == "y"
        break
      elsif repeatA.downcase == "n"
        trigger = "T"
        break
      else
        prompt("Invalid answer, please try again")
      end
    end
  end

