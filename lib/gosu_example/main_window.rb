require "gosu"
require "gosu_example/amazing_text"

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
