class BrooklynMuseum::Cli
  
  def call 
    puts "\n---Hello and Welcome to Brooklyn Museum!---\n"
   
    @input = ""
    until @input == "exit!"
    list_exhibitions
    show_info
    get_input
    anything_else
  
 end
  goodbye
  end 
  
  def  get_exhibitions
    @exhibitions = BrooklynMuseum::Exhibitions
  end 
  
 
     def  list_exhibitions
       puts "Here are our current exhibitions:"
       @exhibitions.each.with_index(1) do |exhibition, index| 
      puts "#{index}. #{exhibition.name}"
    end
 
 
 def get_input
   selected_ixhibition = gets.strip.to_i
   display_info_for(selected_ixhibition) if valid_input(selected_ixhibition, @exhibitions)
 end 
 
 def valid_input(input, data)
   input.to_1 <= data.length && input.to_i > 0
 end 
 
 def  #find by number/show_info
     #puts here is your info
   #displays all the info about exhibition
   #possibly invoking our scraper class
   
   
 end 
  
  
    
  
 
 
 def anything_else
   
  puts "Type 'exit' to exit or hit any key to see more."
  @input = gets.strip

 end 
 
 def goodbye
    puts "We hope you enjoyed Brooklyn Museum!"
    puts "Please visite Brooklyn!"
  end 

end 