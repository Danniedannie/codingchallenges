
class Image
  def initialize (picture)
    @picture = picture
    @column_length = picture[0].length - 1
    @row_length = picture.length - 1
  end

  def execute(distance)
    (1..distance).each do
      #Creates a new empty nested array of 0s for every step outwards
      working_picture = Array.new(@picture.length) { Array.new(@picture[0].length, 0) }
      @picture.each_with_index do |row, row_number|
        row.each_with_index do |item, col_number|
          if item == 1
            working_picture[row_number][col_number] = 1
            working_picture[row_number - 1][col_number] = 1 unless row_number <= 0 #up
            working_picture[row_number + 1][col_number] = 1 unless row_number >= @row_length #down
            working_picture[row_number][col_number - 1] = 1 unless col_number <= 0 #left
            working_picture[row_number][col_number + 1] = 1 unless col_number >= @column_length #right
          end
        end
      end
      #Assigns the working picture back to the picture for use on the next iteration
      @picture = working_picture
    end
  end

  def output_image
    @picture.each do |data|
      puts data.join
    end
  end

  def putter(data)
    data.each do |data|
      puts data.join
    end
  end
end


# image = Image.new(
#   [
# [0,0,0],
# [0,1,0],
# [0,0,0],
# ]
# )

image = Image.new(
  [
  [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,],
  [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,],
  ]
)

image.execute(7)
image.output_image

image.output_image

end






