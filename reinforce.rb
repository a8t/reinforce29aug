require "pp"

digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']

def arrs_to_hash(digits_arr, en_arr, fr_arr)

  hash = {}

  digits_arr.each do |each|
    hash[each.to_i] = {
      french: fr_arr[each.to_i-1],
      english: en_arr[each.to_i-1]
    }
  end

  return hash

end

pp arrs_to_hash(digits, en, fr)
