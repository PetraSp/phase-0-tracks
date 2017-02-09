class TodoList
  def initialize(arr)
    @list = arr
  end 
  def get_items
    @list 
  end 
  def add_item(item)
    @list.push(item)
  end 
  def delete_item(item)
    @list.delete(item)
  end 
  def get_item(number)
    @list[number]
  end 
end
