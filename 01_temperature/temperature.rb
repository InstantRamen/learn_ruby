def ftoc(tempurature_in_f)
	# T(°C) = (T(°F) - 32) × 5/9
	return (tempurature_in_f - 32) * 5/9
end

def ctof(tempurature_in_c)
	return (tempurature_in_c.to_f * 9/5) + 32
end