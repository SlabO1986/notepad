require 'date'

class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Что надо делать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в форматк ДД.ММ.ГГГГ, например 12.05.2003"
    input = STDIN.gets.chomp

    @due_data = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M.%S")} \n\r \n\r"

    deadline = "Крайний срок: #{@due_data}"

    return [deadline, @text, time_string]

  end
end