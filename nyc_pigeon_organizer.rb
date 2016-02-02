def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.collect do |c_g_l, c_mf_l_values|
    c_mf_l_values.collect do |c_g_l_keys, names_array|
      names_array.collect do |names|
        pigeon_list[names] = {}        
        pigeon_list[names][:color] = []
        pigeon_list[names][:gender] = []
        pigeon_list[names][:lives] = []
      end
    end
  end
  data.collect do |c_g_l, c_mf_l_values|
    c_mf_l_values.collect do |c_g_l_keys, names_array|
      names_array.collect do |names|
         if data[:color][c_g_l_keys] != nil
          if data[:color][c_g_l_keys].include?(names)
            pigeon_list[names][:color] << c_g_l_keys.to_s
          end
        end
        if data[:gender][c_g_l_keys] != nil
          if data[:gender][c_g_l_keys].include?(names)
            pigeon_list[names][:gender] << c_g_l_keys.to_s
          end
        end
        if data[:lives][c_g_l_keys] != nil
          if data[:lives][c_g_l_keys].include?(names)
            pigeon_list[names][:lives] << c_g_l_keys.to_s
          end
        end
      end
    end
  end
  # puts "pigeon_list is #{pigeon_list}"
  return pigeon_list
end