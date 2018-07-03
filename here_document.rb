puts <<Name_List #here_document
-----------
Parthavi
Reni
Name_List

puts <<Name_List
------------
1. Parthavi
2. Reni
------------
Name_List

puts 'Name_List',<<Name_List
1. Parthavi
2. Reni
------------
Name_List

puts 'Name_List',<<Name_List ,'Surname',<<Surname  #multiple here_document
1. Parthavi
2. Reni
Name_List
Dobariya
Dhingani
------------
Surname
