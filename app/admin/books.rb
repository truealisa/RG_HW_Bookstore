ActiveAdmin.register Book do
  permit_params :title, :description, :price, :quantity, :year_of_publication, :height, :width,
                :depth, :materials, :cover,
                book_categories_attributes: [:id, :book_id, :category_id, :_destroy]

  form partial: 'form'

  index do
    selectable_column
    column :cover do |book|
      image_tag url_for(book.cover), size: "95x130"
    end
    column :categories do |book|
      book.categories.map(&:title).join(',<br>').html_safe
    end
    column :title
    column :authors do |book|
      book.authors.map { |author| author.first_name + ' ' + author.last_name }
          .join(',<br>').html_safe
    end
    column :description do |book|
      truncate(book.description, length: 150, separator: ' ')
    end
    column :price
    actions
  end

  show do
    attributes_table do
      row :cover do |book|
        image_tag url_for(book.cover), size: "190x260"
      end
      row :categories do |book|
        book.categories.map(&:title).join(', ')
      end
      row :authors do |book|
        book.authors.map { |author| author.first_name + ' ' + author.last_name }.join(', ')
      end

      default_attribute_table_rows.each do |field|
        row field
      end
    end
  end
end
