module VotesHelper
  def destiny(id, total)
    destination = Destination.find(id)
    content_tag(:ul, class: 'collection') do
      content_tag(:li, class: 'collection-item avatar') do
        image_tag("#{destination.name.parameterize.underscore}.jpg", class: 'circle') <<
        content_tag(:h5, destination.name) <<
        content_tag(:p, truncate(destination.description, length: 100)) <<
        content_tag(:a, content_tag(:span, pluralize(total, 'voto', 'votos'), class: 'badge'),  href: '#!', class: 'secondary-content') 
      end
    end
  end
end