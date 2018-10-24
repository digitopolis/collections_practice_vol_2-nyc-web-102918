def begins_with_r(array)
  begins_with_r = []
  array.each do |item|
    if item[0] == "r"
      begins_with_r << item
    end
  end
  if begins_with_r.size == array.size
    true
  else
    false
  end
end

def contain_a(array)
  contain_a = []
  array.each do |element|
    if element.include?("a")
      contain_a << element
    end
  end
  contain_a
end

def first_wa(array)
  array.find { |element| element[0..1] == "wa" }
end

def remove_non_strings(array)
  array.delete_if { |item| !item.is_a?(String) }
end

def count_elements(array)
  element_to_delete = {}
  new_array = []
  array.each do |element|
    element_to_delete = element
    element[:count] = array.count(element)
    new_array << element
    array.delete(element_to_delete)
  end
  new_array
end

def merge_data(keys, data)
  merged_data = []
  data_array = []
  hash1 = {}
  hash2 = {}
  data.each do |hash|
    hash.each do |name, info|
      data_array << info
    end
  end
  i = 0
  keys.each do |hash|
    hash1 = data_array[i]
    hash2 = hash
    merged_data << hash1.merge(hash2)
    i += 1
  end
  merged_data
end

def find_cool(array)
  cool_hash = []
  array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool_hash << hash
      end
    end
  end
  cool_hash
end

def organize_schools(schools)
  schools.each_with_object({}) do |(name, data), res|
  (res[data[:location]] ||= []) << name
  end
end
