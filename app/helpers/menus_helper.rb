module MenusHelper
  def draw_table_row(menu, depth = 0)
    row  = "<tr>"
    row += "<td>"
    row += "&nbsp;&nbsp;" if depth > 0
    row +=    link_to menu.title, menu
    row +=    "<small class=\"hover\">"
    row +=      link_to 'Edit', edit_menu_path(menu)
    row +=      link_to 'Destroy', menu, :confirm => 'Are you sure?', :method => :delete
    row +=    "</small>"
	  row +=  "</td>"
    row +=  "<td>"
    row +=    link_to menu.link, menu.link
    row +=  "</td>"
    row +="</tr>"
	end
end
