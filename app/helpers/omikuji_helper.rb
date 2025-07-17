module OmikujiHelper
  def omikuji_color_class(result)
    case result
    when "ゴリラ大大吉"
      "rainbow-text"
    when "大ウホ吉"
      "text-red-500"
    when "ウホ吉"
      "text-yellow-500"
    when "中ウホ吉"
      "text-green-500"
    when "小ウホ吉"
      "text-purple-500"
    when "末ウホ吉"
      "text-blue-500"
    when "ウホ凶"
      "text-gray-500"
    else
      "text-black"
    end
  end
end
