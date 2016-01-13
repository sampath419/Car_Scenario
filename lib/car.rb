class Car
  attr :current_speed, :max_speed, :brand

  def initialize()
    @current_speed = 0
    @max_speed = 0
    @brand = "unknown"
  end

  def accelerate
    if current_speed < max_speed
      @current_speed += 1
      puts "current_speed #{current_speed}"
    end
    puts "You hit the max speed!!" if max_speed_hit?
  end

  def drive
    loop do
      accelerate
      break if max_speed_hit?
    end
  end

  def max_speed_hit?
    current_speed == max_speed
  end

  def driving?
    current_speed > 0 ? true : false
  end

end
