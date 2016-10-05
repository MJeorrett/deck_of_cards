class String
  # colorization
  def colorize(text, background, bold=false)
    if bold
      "\e[1;#{text};#{background}m#{self}\e[0m"
    else
      "\e[#{text};#{background}m#{self}\e[0m"
    end
  end
end
