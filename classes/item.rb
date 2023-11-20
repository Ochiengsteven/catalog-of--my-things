class Item
  attr_accessor :publish_date

  def initialize(id, genre, source, label, publish_date, archived: false)
    @id = id
    @genre = genre
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived?
    current_year = Date.today.year
    item_publish_year = @publish_date.year
    difference = current_year - item_publish_year

    difference > 10
  end

  def move_to_archive
    can_be_archived? && (@archived = true) || (puts 'Item cannot be archived')
  end  
end
