module ApplicationHelper

  def title
    'Time Tracker'
  end

  def version
    'v 0.0.1'
  end

  def footer
    'Time Tracker Copyright'
  end

  def nav_items
    [
        {
            displaytext: 'Home',
            controllername: 'application',
            linkurl: root_path
        },
        {
            displaytext: 'Users',
            controllername: 'users',
            linkurl: users_path
        }
    ]
  end

  def display_nav_item(displaytext, controllername, linkurl)
    raw("<li#{controller_name == controllername ? ' class="active"' : ''}>#{link_to displaytext, linkurl}</li>")
  end
end
