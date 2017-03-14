class Book
 		
 		def title=(title_name)
 			not_To = ["the", "in" , "of" , "and", "an" ,"a" ,]
 			title_arr = []
 			str = title_name.split(" ")
 			i = 0


 			while(i < str.length)

 				if(not_To.include?(str[i]) && (i != 0) )
 			 		title_arr.push(str[i])
 			 	else
 			 		title_arr.push(str[i].capitalize)
 			 	end

 			 i+= 1
 			 end
 			 @capital_title = title_arr.join(" ")
 		end

 		def title
 			@capital_title
 		end
end	


	# instance varible use @ sign followed by the variable name
 	# allows this variable to be available with the same value on other method 
 	# which are in the same class.