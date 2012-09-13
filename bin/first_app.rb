# My First Ruby App
# By: Jeff Hubbard
# This app will do nothing important

class Information
  
  def initialize(first, last)
    @first_name = first
    @last_name = last
    puts "So you are " + @first_name + " " + @last_name + ", huh?"
  end
  
end

class Actions
  
  def initialize()
    @full_name = nil
    @split_names = []
    greeting()
  end
  
  def prompt()
    print "> "
  end
  
  def greeting()
    puts <<GREETING
Hello, you are you?
I am a useless computer program.
What is your full name?
GREETING
    
    get_name()
  end
  
  def get_name()
      
    prompt()
    @full_name = gets.chomp()
    
    validate()
  end
  
  def validate()
    @split_names = @full_name.split(' ')
    
    if @split_names.first == nil
      puts "No name, huh? Try again bucko."
      
      get_name()
      
    elsif @split_names.length == 1
      puts "Are you Bono or Madonna?  Didn't think so.  Try again."
      
      get_name()
      
    elsif @split_names.length > 2
      puts "Let's save the middle name for your mom.  Just first and last, ok?"
      
      get_name()
      
    else
      puts "Everything checks out here."
      
      @first_name = @split_names[0]
      @last_name = @split_names[1]
      
      send_info()
    end  
  end
  
  def send_info
    Information.new(@first_name, @last_name)
  end
end

Actions.new()