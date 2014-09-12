class Loc

  def initialize
    @buffer = VIM::Buffer.current
  end

  def execute
    total = (1..@buffer.length).reject do |index|
      @buffer[index] =~ /^\s*#.*$/ || @buffer[index] =~ /^\s*$/
    end.length

    VIM::message(total)
  end
end
