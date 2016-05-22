require "duplicates"


describe "integration" do
  

  #FindDuplicate test Integration

  array1 =  [1,2,3,4,5,6,7,8,5,9] #Duplicate is 5 Ordered Array
  array2 =  [9,8,2,1,4,5,7,3,6,8] #Duplicate is 8 Not ordered Array 	
  array3 = 	[4,4,2,1,3,5,8,7,6,9] #Duplicate at the beggining
  array4 = 	[1,2,3,3,4,5,6,7,7,8] #2 Duplicates, first is 3 second 7
  array5 = 	[1,2,3,4,5,6,7,8,9,10]  #No Duplicate 
    
  before do
    @results1 = Duplicates.findDuplicate(array1)
    @results2 = Duplicates.findDuplicate(array2)
    @results3 = Duplicates.findDuplicate(array3)
    @results4 = Duplicates.findDuplicate(array4)
    @results5 = Duplicates.findDuplicate(array5)
  end

  describe Duplicates do
    it "Should find the right dupicate for Array 1" do
       expect(@results1).to eq 5
    end

    it "Should find the right dupicate for Array 2" do
       expect(@results2).to eq 8
    end

    it "Should find the right dupicate for Array 3" do
       expect(@results3).to eq 4
    end

    it "Should not find the wrong duplicate for Array 1" do
    	array1.map{|c| expect(@results1).not_to eq c if c != 5 }  
    end
    it "Should not find the wrong duplicate for Array 2" do
		array2.map{|c| expect(@results2).not_to eq c if c != 8 }
    end
    it "Should not find the wrong duplicate for Array 3" do
    	array3.map{|c| expect(@results3).not_to eq c if c != 4 }
    end

    it "Should find only the first duplicate, in case there are more" do
    	expect(@results4).to eq 3
    end

    it "Should return Fixnum value if duplicate exits" do
    	expect(@results1.class).to eq Fixnum
    	expect(@results2.class).to eq Fixnum
    	expect(@results3.class).to eq Fixnum
    	expect(@results4.class).to eq Fixnum
    end

    it "Should return nil value if duplicate does not exits" do
    	expect(@results5).to eq nil
    end


    it "Should find the right dupicate and probe it Matematically Array 1" do
    	a =*(1..array1.length)
		a = a.inject(0){|sum,x| sum + x }
		b =  array1.inject(0){|sum,x| sum + x }
      	result = array1.length - (a - b)    
       	expect(@results1).to eq result
    end

    it "Should find the right dupicate and probe it Matematically Array 2" do
		a =*(1..array2.length)
		a = a.inject(0){|sum,x| sum + x }
		b =  array2.inject(0){|sum,x| sum + x }
      	result = array2.length - (a - b)    
       	expect(@results2).to eq result
    end

    it "Should find the right dupicate and probe it Matematically Array 3" do
		a =*(1..array3.length)
		a = a.inject(0){|sum,x| sum + x }
		b =  array3.inject(0){|sum,x| sum + x }
      	result = array3.length - (a - b)    
       	expect(@results3).to eq result
    end


    # Testing To find First non repeated Character
    before do
	    @results1 = Duplicates.findDuplicate(array1)
	    @results2 = Duplicates.findDuplicate(array2)
	    @results3 = Duplicates.findDuplicate(array3)
	    @results4 = Duplicates.findDuplicate(array4)
	    @results5 = Duplicates.findDuplicate(array5)
	end



    
  end
end
