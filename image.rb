class Image 
	def initialize (data)
		@data = data
	end

	def output_image
		@data.each {|row| puts row.join}
	end

	def blur(distance)
		distance.times do
			ones = []
			(0...@data.size).each do |row|
				(0...@data[row].size).each do |col|
					if @data[row][col] == 1
						ones << [row, col]
					end
				end
			end

			ones.each do |row, col|
				@data[row-1][col] = 1 if row-1 >= 0
				@data[row][col-1] = 1 if col-1 >= 0
				@data[row+1][col] = 1 if row+1 < @data.size
				@data[row][col+1] = 1 if col+1 < @data[row].size
			end
		end
	end 
end
	



image = Image.new([
  [1, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.blur(3)
image.output_image 

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 1]
])
image.blur(3)
image.output_image 


