require 'pry'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


# Find a way to accumulate the :worldwide_grosses and return that Integer using director_data as input
def gross_for_director(director_data)
  nds=director_data
  total=0
  rownum=0
  binding pry
  #while rownum< nds[:movies].length
  #total+=nds[:movies][rownum][:worldwide_gross]
  #rownum+=1
#end
return total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
    hash={}
    row=0
  while row < nds.length
  hash[nds[row][:name]]=gross_for_director(row)
  row+=1
  end
  result = hash
end
