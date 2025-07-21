module ApplicationHelper
  def default_meta_tags
    {
      site: "Your Site Name",
      title: "Default Title",
      description: "Default Description",
      og: {
        title: :title,
        description: :description,
        type: "website",
        url: request.original_url,
        site_name: "Your Site Name",
      },
      twitter: {
        card: 'summary_large_image', # Twitterで表示する場合は大きいカードに変更
        site: '@', # アプリの公式Twitterアカウントがあれば、アカウント名を記載
        image: image_url('omikuji.png'),# 配置するパスやファイル名によって変更
      }
    }
  end
end
