require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_hash={}
  data.each do |characteristic, hash|
    hash.each do |specific, array|
      array.each do |name|
        if !pigeon_hash.has_key?(name)
          pigeon_hash[name]={}
        end

        if !pigeon_hash[name].has_key?(characteristic)
          pigeon_hash[name][characteristic]=[]
        end

        if !pigeon_hash[name][characteristic].include?(specific)
          pigeon_hash[name][characteristic].push(specific.to_s)
        end
      end
    end
  end
  pigeon_hash
end
