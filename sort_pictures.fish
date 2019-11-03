function sort_pictures                                                           
    set list ./**.jpg                      
    for val in $list                       
            set year  (date -r $val +%Y)   
            set month (date -r $val +%B)   
            set day   (date -r $val +%d)   
            echo $year/$month/$day         
            mkdir -p "$year"               
            cd    "$year"                  
            mkdir -p "$month"              
            cd    "$month"                 
            mkdir -p "$day"                
            cd ..                          
            cd ..                          
            cp $val "./$year/$month/$day/" 
    end                                        
end                                            
sort_pictures                                  
