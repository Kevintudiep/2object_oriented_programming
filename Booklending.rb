class Book

  @@on_shelf = [1, 2, 3, 5]
  @@on_loan = [4]

  def initialize(title, author, isbn)
    @title = title
    @author =  author
    @isbn = isbn
    @due_date = nil
  end

  def self.create(title, author, isbn)
    book = Book.new(title, author, isbn)
    @@on_shelf << book
  end

  def lent_out?
    if @@on_loan.include? self
      return true
    else
      return false
    end
  end
  #
  # def self.current_due_date
  #   next_time = Time.now + 86400
  #   return next_time
  # end

  # def borrow
  #   if lent_out?
  #     return false
  #   else
  #     self.due_date=(Book.current_due_date)
  #     @@on_loan << self
  #     return true
  #   end



  def self.available
    return @@on_shelf
  end

  def self.borrowed
    return @@on_loan
  end

  def self.browse
    return @@on_shelf.sample
  end

  def due_date
    return @due_date
  end

  def due_date=(new_due_date)
    return @new_due_date
  end

end


startrek = Book.create('star trek', 'george smith', 135653)
# p sci_fi

puts startrek.lent_out?
