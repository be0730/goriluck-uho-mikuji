module OmikujiHelper
  def omikuji_color_class(result)
    case result
    when "ゴリラ大大吉"
      "rainbow-text"
    when /大ウホ吉|ウホ吉/
      "text-yellow-500"
    when /中ウホ吉|小ウホ吉|"末ウホ吉"/
      "text-green-600"
    when "ウホ凶"
      "text-gray-500"
    else
      "text-black"
    end
  end
end
