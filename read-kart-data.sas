/*

Mario Kart DS Data

This code creates WORK.KARTLIST which contains data on the karts
in Mario Kart DS.

*/

data work.kartlist ;
  infile cards ;
  length line $500 ;
  attrib id length=8 label="ID" ;
  attrib name length=$20 label="Kart Name" ;
  attrib speed length=8 label="Speed" ;
  attrib accel length=8 label="Acceleration" ;
  attrib weight length=8 label="Weight" ;
  attrib handle length=8 label="Handling" ;
  attrib drift length=8 label="Drift" ;
  attrib items length=8 label="Items" ;
  retain id name speed accel weight handle drift items ;
  input ;
  line = _infile_ ;
  drop line ;
  if substr(line, 1, 1) = "=" then delete ;
  if trim(line) = "" then delete ;
  if scan(line, 1, ':') = "Speed" then speed = input(scan(line, 2, ':'), 8.) ;
  else if scan(line, 1, ':') = "Acceleration" then accel = input(scan(line, 2, ':'), 8.) ;
  else if scan(line, 1, ':') = "Weight" then weight = input(scan(line, 2, ':'), 8.) ;
  else if scan(line, 1, ':') = "Handling" then handle = input(scan(line, 2, ':'), 8.) ;
  else if scan(line, 1, ':') = "Drift" then drift = input(scan(line, 2, ':'), 8.) ;
  else if scan(line, 1, ':') = "Items" then do ;
    items = input(scan(line, 2, ':'), 8.) ;
    output ;
  end ;
  else do ;
    id = input(scan(line, 1, '.'), 8.) ;
    name = trim(left(scan(line, 2, '.'))) ;
  end ;
cards;
 1. B Dasher                  
====================          
Speed: 58                     
Acceleration: 70              
Weight: 75                    
Handling: 52                  
Drift: 55                     
Items: 100                    

 4. Poltergust 4000           
=====================         
Speed: 74                     
Acceleration: 76              
Weight: 48                    
Handling: 76                  
Drift: 33                     
Items: 33                     

 7. Royale                    
=====================         
Speed: 40                     
Acceleration: 70              
Weight: 76                    
Handling: 44                  
Drift: 94                     
Items: 100                    

10. Egg 1                     
=====================         
Speed: 58                     
Acceleration: 92              
Weight: 47                    
Handling: 90                  
Drift: 41                     
Items: 33                     

13. Mushmellow                
=====================         
Speed: 44                     
Acceleration: 88              
Weight: 48                    
Handling: 70                  
Drift: 70                     
Items: 33                     

16. Rambi Rider               
=====================         
Speed: 75                     
Acceleration: 44              
Weight: 80                    
Handling: 30                  
Drift: 74                     
Items: 100                    

19. Brute                     
=====================         
Speed: 93                     
Acceleration: 52              
Weight: 55                    
Handling: 51                  
Drift: 49                     
Items: 33                     

22. Tyrant                    
=====================         
Speed: 90                     
Acceleration: 25              
Weight: 83                    
Handling: 25                  
Drift: 65                     
Items: 100                    

25. Power Flower              
=====================         
Speed: 57                     
Acceleration: 61              
Weight: 67                    
Handling: 35                  
Drift: 85                     
Items: 100                    

28. Banisher                  
=====================         
Speed: 25                     
Acceleration: 97              
Weight: 68                    
Handling: 92                  
Drift: 45                     
Items: 100                    

31. Gold Mantis               
=====================         
Speed: 75                     
Acceleration: 65              
Weight: 61                    
Handling: 60                  
Drift: 59                     
Items: 33                     

34. ROB-BLS                   
=====================         
Speed: 100                    
Acceleration: 55              
Weight: 57                    
Handling: 70                  
Drift: 27                     
Items: 33                     

 3. Shooting Star
=====================
Speed: 66
Acceleration: 75
Weight: 47
Handling: 60
Drift: 59
Items: 33

 6. Streamliner
=====================
Speed: 66
Acceleration: 71
Weight: 74
Handling: 70
Drift: 30
Items: 100

 9. Light Tripper
=====================
Speed: 51
Acceleration: 75
Weight: 52
Handling: 51
Drift: 100
Items: 33

12. Cucumber
=====================
Speed: 48
Acceleration: 88
Weight: 70
Handling: 80
Drift: 36
Items: 100

15. 4-Wheel Cradle
=====================
Speed: 34
Acceleration: 83
Weight: 76
Handling: 61
Drift: 65
Items: 100

18. Wildlife
=====================
Speed: 85
Acceleration: 50
Weight: 55
Handling: 37
Drift: 80
Items: 33

21. Dragonfly
=====================
Speed: 83
Acceleration: 46
Weight: 80
Handling: 45
Drift: 45
Items: 100

24. Hurricane
=====================
Speed: 100
Acceleration: 34
Weight: 61
Handling: 32
Drift: 70
Items: 33

27. Light Dancer
=====================
Speed: 67
Acceleration: 67
Weight: 52
Handling: 43
Drift: 90
Items: 33

30. Dry Bomber
=====================
Speed: 34
Acceleration: 100
Weight: 58
Handling: 100
Drift: 49
Items: 33

33. Zipper
=====================
Speed: 65
Acceleration: 59
Weight: 67
Handling: 52
Drift: 55
Items: 100

36. ROB-LGS
=====================
Speed: 90
Acceleration: 48
Weight: 70
Handling: 61
Drift: 24
Items: 100

 2. Standard MR             
====================        
Speed: 65                   
Acceleration: 72            
Weight: 65                  
Handling: 55                
Drift: 56                   
Items: 67                   

 5. Standard LG             
=====================       
Speed: 72                   
Acceleration: 74            
Weight: 65                  
Handling: 74                
Drift: 31                   
Items: 67                   

 8. Standard PC             
=====================       
Speed: 46                   
Acceleration: 74            
Weight: 65                  
Handling: 48                
Drift: 98                   
Items: 67                   

11. Standard YS             
=====================       
Speed: 55                   
Acceleration: 90            
Weight: 65                  
Handling: 84                
Drift: 38                   
Items: 67                   

14. Standard TD             
=====================       
Speed: 38                   
Acceleration: 85            
Weight: 65                  
Handling: 66                
Drift: 67                   
Items: 67                   

17. Standard DK             
=====================       
Speed: 80                   
Acceleration: 47            
Weight: 65                  
Handling: 33                
Drift: 77                   
Items: 67                   

20. Standard WR             
=====================       
Speed: 89                   
Acceleration: 50            
Weight: 65                  
Handling: 48                
Drift: 47                   
Items: 67                   

23. Standard BW             
=====================       
Speed: 95                   
Acceleration: 30            
Weight: 65                  
Handling: 28                
Drift: 67                   
Items: 67                   

26. Standard DS             
=====================       
Speed: 65                   
Acceleration: 65            
Weight: 65                  
Handling: 40                
Drift: 87                   
Items: 67                   

29. Standard DB             
=====================       
Speed: 30                   
Acceleration: 99            
Weight: 65                  
Handling: 96                
Drift: 47                   
Items: 67                   

32. Standard WL             
=====================       
Speed: 72                   
Acceleration: 63            
Weight: 65                  
Handling: 55                
Drift: 57                   
Items: 67                   

35. Standard RB             
=====================       
Speed: 96                   
Acceleration: 53            
Weight: 65                  
Handling: 65                
Drift: 26                   
Items: 67                   
run ;

proc sort data=work.kartlist ;
  by id ;
quit ;
