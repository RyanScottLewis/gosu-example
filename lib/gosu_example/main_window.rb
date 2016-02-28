require "gosu"

module GosuExample
  class MainWindow < Gosu::Window
    WIDTH = 300
    HEIGHT = 200
    PADDING = 20

    def initialize
      super(WIDTH, HEIGHT)

      self.caption = "Amazing Gosu Example Ooooooo!"

      @text = Gosu::Image.from_text("Ooooooo amaaaaaazing!", 20)
    end

    def draw
      @text.draw(PADDING, PADDING, 0)
    end
  end
end
