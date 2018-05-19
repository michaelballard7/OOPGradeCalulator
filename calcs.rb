
class Calculator
  def average(object)
    values = 0
    object.each do |key, value|
      values = (value[0].to_i + value[1].to_i + value[2].to_i)
    end
    puts values / 3
  end
end
