def ftoc(temperature)
	temperature -= 32
	temperature *= 5.0
	temperature /= 9.0
end

def ctof(temperature)
	temperature *= 9.0
	temperature /= 5.0
	temperature += 32
end