require "gosu"

module GosuExample
  class AmazingText
    def initialize
      @x = 0
      @y = 0
      @text = Gosu::Image.from_text("Ooooooo amaaaaaazing!", 20)
    end

    attr_reader :x

    def x=(value)
      @x = value.to_i
    end

    attr_reader :y

    def y=(value)
      @y = value.to_i
    end

    def draw
      @text.draw(@x, @y, 0)
    end
  end
end
