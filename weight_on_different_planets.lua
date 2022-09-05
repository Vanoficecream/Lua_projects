function your_weight_on_other_planets(original_weight,  planet_choose)

    mercury_g, venus_g, earth_g, mars_g, jupyter_g = 3.7, 8.87, 9.8, 3.7, 24.8
    temp_weight = 1
    n = 0.101

    if planet_choose == 1 then
       temp_weight = (original_weight * mercury_g) * n
       return math.ceil(temp_weight)
    end
    if planet_choose == 2 then
        temp_weight = (original_weight * venus_g) * n
        return math.ceil(temp_weight)
    end
    if planet_choose == 3 then
        temp_weight = (original_weight * earth_g) * n
        return math.ceil(temp_weight)
    end
    if planet_choose == 4 then
        temp_weight = (original_weight * mars_g) * n
        return math.ceil(temp_weight)
    end
    if planet_choose == 5 then
        temp_weight = (original_weight * jupyter_g) * n
        return math.ceil(temp_weight)
    end
end

    
io.write("Type your current weight: ")
weight = io.read("*n")
io.write("Choose the planet: 1 - mercury, 2 - venus, 3 - earth, 4 - mars, 5 - jupyter: ")
planet = io.read("*n")
print(your_weight_on_other_planets(weight, planet))