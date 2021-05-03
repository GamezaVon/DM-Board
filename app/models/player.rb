class Player < ApplicationRecord
    $exp = [0,300,900,2700,6500,14000,23000,34000,48000,64000,85000,100000,120000,140000,165000,195000,225000,265000,305000,355000]
    
    def get_lvl
        $exp.each do |lvl|
            if experience <= lvl
                return [$exp.find_index(lvl),$exp[$exp.find_index(lvl)-1],$exp[$exp.find_index(lvl)]]
                break
            end
        end
    end

    def lvl_range
        $exp.each do |lvl|
            if experience <= lvl
                return $exp[lvl]
                break
            end
        end
    end

end
