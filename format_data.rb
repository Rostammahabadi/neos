require_relative 'api_call'


class FormatData
  attr_reader :data
  def initialize(data)
    @data = data
    @column_labels = {
              name: "Name",
              diameter: "Diameter",
              miss_distance: "Missed The Earth By:"
              }
  end

  def astroid_list
    data[:astroid_list]
  end

  def total_number_of_astroids
    data[:total_number_of_astroids]
  end

  def largest_astroid
    data[:biggest_astroid]
  end

  def column_data
     @column_labels.each_with_object({}) do |(col, label), hash|
       hash[col] = {
      label: label,
      width: [astroid_list.map { |astroid| astroid[col].size }.max, label.size].max}
    end
  end

  def header
    "| #{ column_data.map { |_,col| col[:label].ljust(col[:width]) }.join(' | ') } |"
  end

  def divider
    "+-#{column_data.map { |_,col| "-"*col[:width] }.join('-+-') }-+"
  end

  def format_row_data(row_data, column_info)
    row = row_data.keys.map { |key| row_data[key].ljust(column_info[key][:width]) }.join(' | ')
    return "| #{row} |"
  end

  def create_rows
    astroid_list.map do |astroid|
      format_row_data(astroid, column_data)
    end
  end

  def show
    puts divider
    puts header
    puts create_rows.each{|row| puts row}
    puts divider
  end
end
