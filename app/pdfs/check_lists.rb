class CheckListsPdf < Prawn::Document
  def initialize(check_lists, view)
    font '/home/dmitriy/RubymineProjects/mokyMo/app/assets/fonts/pfdintextpro-regular.ttf'
    super(top_margin: 70)
    @check_lists = check_lists
    @view = view
    line_items
    total_price
  end

  def line_items
    move_down 20
    table line_item_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def line_item_rows
    [["Product", "Qty"]] +
    @check_lists.map do |list|
      [list.title, list.description]
    end
  end

  def total_price
    move_down 15
    text "Total Price: #{price(@check_lists.priority)}", size: 16, style: :bold
  end
end