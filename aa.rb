<!DOCTYPE html>
<html>
  <head>
    <title>Protospace</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>

    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
    <%= javascript_importmap_tags %>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:400,700,900&display=swap" rel="stylesheet">
  </head>

  <body>
    <header class="header">
      <div class="inner">
        <div class="nav">
          <div class="nav__left">
            <%= link_to image_tag("logo.png", class: :logo), root_path %>
          </div>

              <% if user_signed_in? %>
                <p>こんにちは <%= current_user.name %> さん</p>

              <%= link_to 'ログアウト', destroy_user_session_path, method: :delete, class: 'btn btn-secondary' %>
              <%= link_to 'New Proto', new_proto_path, class: 'btn btn-primary' %>
            <% else %>

          <%# ログインしているときは以下を表示するようにしましょう %>
            <%# <div class="nav__right"> %>
              <%# <%= link_to "ログアウト", root_path, class: :nav__logout %>
               <%= link_to "New Proto", new_prototype_path, class: :nav__btn %>
            <%# </div> %>
          <%# // ログインしているときは上記を表示するようにしましょう %>
          <%# ログインしていないときは以下を表示するようにしましょう %>
            <div class="nav__right">
              <%= link_to "ログイン", new_user_session_path, class: :nav__btn %>
              <%= link_to '新規登録', new_user_registration_path, class: 'btn btn-primary' %>


            </div>
          <%# // ログインしていないときは上記を表示するようにしましょう %>
        </div>
      </div>
    </header>
    <%= yield %>
    <footer class="footer">
      <p class="copyright">Copyright © PROTO SPACE All rights reserved.</p>
    </footer>
  </body>
</html>
