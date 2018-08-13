class Post
  def initialize
    @created_at = Nime.now
    @text = nil
  end

  def read_from_console
  # todo
  end

  def to_stings
  # todo
  end

  def save
    file = File.new(file_path, "w:UTF-8")

    for item in to_strings do
      file.puts(item)
    end

    file.close
  end

  def file_path
    curent_path = File.dirname(__FILE__)

    file_name = @created_at.strftime("#{self.close.name}_%Y-%m-%d_%H-%M-%S.txt")

    return curent_path + "/" + file_name
  end
end