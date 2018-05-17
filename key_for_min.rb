# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'

def key_for_min_value(name_hash)
  prev_value = nil
  if name_hash == {}
    nil
  else
    name_hash.each do |key, value|
      if prev_value == nil || prev_value > value
        prev_value = value
      end
    end
    name_hash.each do |key, value|
      if value == prev_value
        return key
      end
    end
  end
end
