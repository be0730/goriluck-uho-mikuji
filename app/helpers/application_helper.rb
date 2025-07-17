module ApplicationHelper
  def default_meta_tags
    {
      site: 'Your Site Name',
      title: 'Default Title',
      description: 'Default Description',
      og: {
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        site_name: 'Your Site Name'
      }
    }
  end
end
