module ApplicationHelper
  def default_meta_tags
    {
      site: "Your Site Name",
      title: "Goriluck ウホみくじ",
      description: "今日のあなたのウホ運勢をチェックしよう！",
      og: {
        title: "Goriluck ウホみくじ",
        description: "今日のあなたのウホ運勢をチェックしよう！",
        type: "website",
        url: request.original_url,
        site_name: "Your Site Name",
        image: image_url("omikuji.png") # 配置するパスやファイル名によって変更
      },
      twitter: {
        title: "Goriluck ウホみくじ",
        description: "今日のあなたのウホ運勢をチェックしよう！",
        card: "summary_large_image", # Twitterで表示する場合は大きいカードに変更
        site: "@", # アプリの公式Twitterアカウントがあれば、アカウント名を記載
        image: "#{request.base_url}/ogp/omikuji.png" # 配置するパスやファイル名によって変更
      }
    }
  end
end
