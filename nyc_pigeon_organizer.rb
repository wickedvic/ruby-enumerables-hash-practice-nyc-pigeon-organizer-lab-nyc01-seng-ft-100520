def nyc_pigeon_organizer(data)
  new_hash = {}
 final_results = data.each_with_object { do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end

        new_hash[name][key] << new_value.to_s

      end
    end
  end
  new_hash
end