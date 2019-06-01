class Image 
    attr_accessor :image 
	def initialize (image)
    @image = image 
end

def output_image 
	self.image.each do |x|

  image[0][1]=1
  image[1][0]=1
  image[1][2]=1
  image[1][3]=1
  image[2][1]=1
  image[2][3]=1
  image[3][3]=1
  image[2][2]=1
 
	puts x.join() 

end 
end 

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image

end






