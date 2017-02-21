# def my_collect(array)
#   new_collection = [] #create new empty array
#   i = 0 #counter variable i set to 0
#   while i < array.length #start while loop, execute code below as long as i is less than the length of the array
#     new_collection << yield(array[i]) #grab the value of each successive index element and yield it to a block, appending each value to the end of the new_collection array
#     i = i + 1 #increment value of i variable
#   end #end while loop
#   new_collection #return new_collection array
# end #end method

### finally, another way to do it, like above, but starting with counter variable at 1 instead of 0 (which is even)
def my_select(collection)
  new_collection = [] #create new empty array
  i = 1 #counter variable i set to 1 (not 0, which is even)
  while i < collection.length #start while loop, execute code below as long as i is less than the length of the array
    (new_collection << yield(i) if i.even? # each number gets appended to new_collection that is even
    i = i + 1 #increment value of i variable
    end #end do loop
  new_collection #return new_collection array
end #end method

### this works, but uses each, and doesn't specifically use 'yield' (same as below but do loop instead of {} ):::::
# def my_select(collection)
#   new_collection = [] #create new empty array
#   if block_given? #begin if...else statement
#     collection.each do |num|
#       (new_collection << num) if num.even? # each number gets appended to new_collection that is even
#     end #end do loop
#   else #but if no block was given...
#     puts "Hey! No block was given!"
#   end #end if...else statement
#   new_collection #return new_collection array
# end #end method


### this works, but uses each, and doesn't specifically use 'yield' :::::
# def my_select(collection)
#   new_collection = [] #create new empty array
#   if block_given? #begin if...else statement
#     collection.each { |num| (new_collection << num) if num.even? }
#   else #but if no block was given...
#     puts "Hey! No block was given!"
#   end #end if...else statement
#   new_collection #return new_collection array
# end #end method

### trying to get this to work:::::
# def my_select(collection)
#   new_collection = [] #create new empty array
#   if block_given? #begin if...else statement
#     i = 0 #counter variable i set to 0
#     while (i < collection.length && i.even?) #start while loop, execute code below as long as i is less than the length of the array
#       new_collection << yield(collection[i]) #grab the value of each successive index element and yield it to a block, appending each value to the end of the new_collection array
#       i = i + 1 #increment value of i variable
#     end #end while loop
#     new_collection #return new_collection array
#   else #but if no block was given...
#     puts "Hey! No block was given!"
#   end #end if...else statement
#   puts new_collection #return new_collection array
# end #end method


## this works, but it uses .select within the method:

# def my_select(collection)
#   collection.select { |num|  num.even?  }
# end
