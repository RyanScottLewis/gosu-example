require "gosu_example/main_window"

module GosuExample
  def run
    MainWindow.new.show
  end
  module_function :run
end
