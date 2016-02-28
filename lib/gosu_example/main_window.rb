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

module GosuExample
  class MainWindow < Gosu::Window
    WIDTH = 300
    HEIGHT = 200

    def initialize
      super(WIDTH, HEIGHT)

      self.caption = "Amazing Gosu Example Ooooooo!"

      @text = AmazingText.new
    end

    def update
      @text.x -= 1 if Gosu::button_down?(Gosu::KbLeft)
      @text.x += 1 if Gosu::button_down?(Gosu::KbRight)

      @text.y -= 1 if Gosu::button_down?(Gosu::KbUp)
      @text.y += 1 if Gosu::button_down?(Gosu::KbDown)
    end

    def draw
      @text.draw
    end
  end
end
