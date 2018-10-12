ApiPagination.configure do |config|
  # If you have more than one gem included, you can choose a paginator.
  # config.paginator = :kaminari # or :will_paginate

  # By default, this is set to 'Total'
  # config.total_header = 'X-Total'
  config.total_header = 'total'

  # By default, this is set to 'Per-Page'
  # config.per_page_header = 'X-Per-Page'
  config.per_page_header = 'por-pagina'

  # Optional: set this to add a header with the current page number.
  # config.page_header = 'X-Page'
  config.page_header = 'pagina'

  # Optional: set this to add other response format. Useful with tools that define :jsonapi format
  # config.response_formats = [:json, :xml, :jsonapi]

  # Optional: what parameter should be used to set the page option
  # config.page_param = :page
  config.page_param = :pagina
  # or
  # config.page_param do |params|
  #   params[:page][:number] if params[:page].is_a?(ActionController::Parameters)
  # end

  # Optional: what parameter should be used to set the per page option
  config.per_page_param = :por_pagina
  # or
  # config.per_page_param do |params|
  #   params[:page][:size] if params[:page].is_a?(ActionController::Parameters)
  # end

  # Optional: Include the total and last_page link header
  # By default, this is set to true
  # Note: When using kaminari, this prevents the count call to the database
  # config.include_total = false
end
