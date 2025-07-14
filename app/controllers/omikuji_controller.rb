class OmikujiController < ApplicationController
  require Rails.root.join("app/lib/gorilla_omikuji")
  def index
    @result = GorillaOmikuji::LIST.sample
    og_image_map = {
    "ゴリラ大大吉" => "ogp/daidaikichi.png",
    "大ウホ吉"   => "ogp/daiuhokichi.png",
    "ウホ吉"     => "ogp/uhokichi.png",
    "中ウホ吉"     => "ogp/chuuuhokichi.png",
    "小ウホ吉"     => "ogp/syouuhokichi.png",
    "ウホ末吉"     => "ogp/uhosuekichi.png",
    "ウホ凶"       => "ogp/uhokyou.png"
    # その他結果も追加...
  }

  og_image_file = og_image_map[@result[:result]] || "ogp/default.png"
  @og_image = "#{request.base_url}/#{og_image_file}"


  set_meta_tags(
      title: "Goriluck ウホみくじ - #{@result[:result]}",
      description: @result[:message],
      og: {
        title: "Goriluck ウホみくじ - #{@result[:result]}",
        description: @result[:message],
        type: "website",
        url: request.original_url,
        image: @og_image
      },
      twitter: {
        card: "summary_large_image",
        image: @og_image
      }
    )
  end
end
