class OmikujiController < ApplicationController
  require Rails.root.join("app/lib/gorilla_omikuji")
  def index
    random_index = rand(GorillaOmikuji::LIST.size)
    redirect_to omikuji_result_path(random_index)
  end

  def result
    list = GorillaOmikuji::LIST
    id = params[:id].to_i

    return render plain: "Not Found", status: 404 if id < 0 || id >= list.size

    @result = list[id]

    og_image_map = {
      "ゴリラ大大吉" => "ogp/daidaikichi.png",
      "大ウホ吉"     => "ogp/daiuhokichi.png",
      "ウホ吉"       => "ogp/uhokichi.png",
      "中ウホ吉"     => "ogp/chuuuhokichi.png",
      "小ウホ吉"     => "ogp/syouuhokichi.png",
      "末ウホ吉"     => "ogp/uhosuekichi.png",
      "ウホ凶"       => "ogp/uhokyou.png"
    }

    og_image_file = og_image_map[@result[:result]] || "ogp/default.png"
    @og_image = "#{request.base_url}/#{og_image_file}"

    set_meta_tags(
      title: "Goriluck ウホみくじ - #{@result[:result]}",
      og: {
        title: "Goriluck ウホみくじ - #{@result[:result]}",
        description: ActionController::Base.helpers.strip_tags(@result[:message].to_s),
        image: @og_image,
        url: request.original_url,
        type: "website"
      },
      twitter: {
        card: "summary_large_image",
        image: @og_image
      }
    )
  end
end
