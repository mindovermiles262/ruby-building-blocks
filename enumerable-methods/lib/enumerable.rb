module Enumerable
    def my_each
        for i in self
            yield(i)
        end
    end

    def my_each_with_index
        for i in self
            yield(self[i-1], i-1)
        end
    end
    
    def my_select
        arr = []
        #add iteration if true
        for i in self
            arr << i if (yield(i) == true)
        end
        arr        
    end
    
    def my_all?
        #check all iterations are true
        for i in self
            (yield(i) == true) ? (next) : (return false)
        end
        true
    end
    
    def my_any?
        #check if any iterations are true
        for i in self
            (yield(i) == true) ? (return true) : (next)
        end
        false
    end
    
    def my_none?
        #check all iterations are false
        for i in self
            (yield(i) == true) ? (return false) : (next)
        end
        true
    end
    
    def my_count(*a)
        count = 0
        for i in self
            # arg equals array number
            if (i == a.join.to_i)
                count += 1
            # block is given
            elsif block_given?
                if yield(i)
                    count += 1
                end
            # no args or block, count items in array
            elsif (a == [])
                count += 1
            end
        end
        count #Return count
    end
    
    def my_map(proc = nil)
        arr = []
        for i in self
            if proc && block_given?
                arr << proc.call(yield(i))
            elsif block_given?
                arr << yield(i)
            else
                arr << proc.call(i)
            end
        end
        arr
    end

    def my_inject(*arg)
        (arg == []) ? (memo = 0) : memo = arg[0]
        self.my_each { |i| memo = yield(memo, i) }
        memo
    end
end

# check my_inject
def multiply_els(arr)
    arr.my_inject(1) { |memo, i| memo * i }
end
#multiply_els([2,4,5]) #=> 40`