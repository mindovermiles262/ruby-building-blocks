def bubble_sort(arr)
    index = 0
    while (index < (arr.length - 1)) do
        rep = 0
        (arr.length - 1).times do
            if (arr[rep] > arr[rep + 1])
                arr[rep], arr[rep + 1] = arr[rep + 1], arr[rep]
            end
            rep += 1
        end
    index += 1
    end
    return arr
end

print(bubble_sort([4,3,78,2,0,2]).inspect+"\n")
# => [0 2 2 3 4 78]


def bubble_sort_by(arr)
    index = 0
    while (index < (arr.length - 1)) do
        rep = 0
        (arr.length - 1).times do
            if yield(arr[rep], arr[rep + 1]) > 0
                arr[rep], arr[rep + 1] = arr[rep + 1], arr[rep]
            end
            rep += 1
        end
    index += 1
    end
    return arr
end

print(bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end)
print("\n")
# => ["hi", "hey", "hello"]