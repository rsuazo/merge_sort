def merge_sort(list)
  half = list.length / 2

  if list.length < 2
    return list
  else

    #sort left half of elements
    left_half = merge_sort(list.slice(0, half))

    #sort right half of elements
    right_half = merge_sort(list.slice(half, list.length))
    
    #merge sorted values
    merged_list = []
    i=0
    j=0
    
    while i < left_half.length || j < right_half.length do
      if left_half[i] == nil
        while right_half[j] != nil do
          merged_list << right_half[j]
          j+=1
        end
      elsif right_half[j] == nil
        while left_half[i] != nil do
          merged_list << left_half[i]
          i+=1
        end
      end
      if left_half[i] != nil || right_half[j] != nil
        if left_half[i] > right_half[j]
          merged_list << right_half[j]
          j += 1
        else
          merged_list << left_half[i]
          i += 1
        end
      end
    end

  merged_list
  end
end

array = [1,2,3,4,5,6,7,-1,8,2,3,4]

merge_sort(array)