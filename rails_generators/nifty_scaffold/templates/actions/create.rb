  def create
    @<%= singular_name %> = <%= class_name %>.new(allowed_params)
    if @<%= singular_name %>.save
      flash[:notice] = "Successfully created <%= name.underscore.humanize.downcase %>."
      redirect_to <%= item_path('url') %>
    else
      form_info
      render :action => 'new'
    end
  end
