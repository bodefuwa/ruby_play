class UsersPdf < Prawn::Document
  def initialize(users)
    super(top_margin: 70)
    @users = users
    text "Greetings from Victory and Praise and Total Users: #{@users.count}"
    text @users.count.to_s
#    send_data render

    # @users = users
    # @view = view 
    # user_details
    # user_count
  end

  def user_details
    move_down 20
    table user_details_rows do
      row(0).font_style = :right
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def user_details_rows
    [["Name", "Username", "Email"]] + @users.user_details.map do |user|
      [user.name, user.username, user.email]
    end
  end

  def user_count
    move_down 15
    text "Total Users: #{@users.count}", size: 16, style: :bold
  end
end
