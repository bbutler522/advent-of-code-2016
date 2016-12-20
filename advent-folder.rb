# Create the directories for each day
x = 1
while (x<26)
	directory_name = "Day" + x.to_s
	Dir.mkdir(directory_name) unless File.exists?(directory_name)
	x += 1
end