def get_player_input
    puts "queen location is 1,1 "
    print 'Please enter field position x & y coordinate with slash: '
    gets.chomp
end

def player_array (field_coordinates = get_player_input())
    field_coordinates_array = field_coordinates.to_s.split(' ')
    field_coordinates_array = field_coordinates_array.map(&:to_i)
end

def queen_attack (field_coordinates_array = player_array())
    
    if  (field_coordinates_array[0]  >1 && field_coordinates_array[0] <9) && field_coordinates_array[1]   == 1 
         true
    elsif (field_coordinates_array[1]  >1 && field_coordinates_array[1]  <9) &&  field_coordinates_array[0]  == 1  
        true  
    elsif  field_coordinates_array[0] == field_coordinates_array[1] && field_coordinates_array[0]  > 1 
        true
    else 
        false    
    end     
end
 