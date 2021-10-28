# Wave sort
# arr[0] >= arr[1] <= arr[2] >= arr[3] <= arr[4] >= ...
# ejemplo:
# wave_sort([1, 2, 6, 19, 12, 3, 1])
# => [19, 1, 12, 1, 6, 2, 3]

# Rev [0] >= [1]
# no es >= [2].. []
#  [i] swap [i]<>[0+1]

def wave_sort(arr)
  # loop para revisar cada elemento del arreglo
  for i in 0..arr.length-2
    for j in i+1..arr.length-1
      if i%2!=0
        # arr[0] >= arr[1] 
        if arr[i] >= arr[j]
          arr[i], arr[j] = arr[j], arr[i]
        end
      else
        # arr[1] <= arr[2]
        if arr[i] <= arr[j]
          arr[i], arr[j] = arr[j], arr[i]
        end
      end
    end
  end
  arr
end

p wave_sort([1, 2, 6, 19, 12, 3, 1])
p wave_sort([1, 2, 6, 19, 12, 3, 1, 1, 2, 6, 19, 12, 3, 1])

# [1, 2, 6, 19, 12, 3, 1]
# 2, 1, 6,
# 2, 1, 6,
# 2, 1, 6, 19 > 2, 1, 19, 6
# 2, 1, 19, 6, 12
# 2, 1, 19, 6, 12, 3