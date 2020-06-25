require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'format_data'
require_relative 'near_earth_objects'

class FormatDataTest < Minitest::Test

  def test_it_has_attributes
    neo = NearEarthObjects.new("2012-01-01")
    column_data_one = FormatData.new(neo.formatted_asteroid_data)

    assert_equal 3, column_data_one.data.count
    assert_kind_of Hash, column_data_one.data
  end

  def test_column_data
    neo = NearEarthObjects.new("2012-01-01")
    column_data_one = FormatData.new(neo.formatted_asteroid_data)
    assert_equal ({:name=>{:label=>"Name", :width=>17}, :diameter=>{:label=>"Diameter", :width=>8}, :miss_distance=>{:label=>"Missed The Earth By:", :width=>20}}), column_data_one.column_data
  end

  def test_header_method
    neo = NearEarthObjects.new("2012-01-01")
    column_data_one = FormatData.new(neo.formatted_asteroid_data)
    expected = "| Name              | Diameter | Missed The Earth By: |"
    assert_equal expected, column_data_one.header
  end

  def test_divider_method
    neo = NearEarthObjects.new("2012-01-01")
    column_data_one = FormatData.new(neo.formatted_asteroid_data)
    expected = "+-------------------+----------+----------------------+"
    assert_equal expected, column_data_one.divider
  end

  def test_create_rows
    neo = NearEarthObjects.new("2012-01-01")
    column_data_one = FormatData.new(neo.formatted_asteroid_data)
    column_info = column_data_one.column_data
    expected = ["| (2012 BC14)       | 223 ft   | 1835888 miles        |", "| (2011 YP10)       | 234 ft   | 7851900 miles        |", "| (2012 LR1)        | 1548 ft  | 44876935 miles       |", "| (2017 BX)         | 48 ft    | 27234129 miles       |", "| 152671 (1998 HL3) | 1862 ft  | 34558684 miles       |", "| (2007 AM)         | 891 ft   | 17718060 miles       |", "| (2014 MV18)       | 354 ft   | 38219458 miles       |"]

    assert_equal expected, column_data_one.create_rows
  end

  def test_show
    neo = NearEarthObjects.new("2012-01-01")
    column_data_one = FormatData.new(neo.formatted_asteroid_data)
    expected = <<-HEREDOC
    #{column_data_one.divider}
    #{column_data_one.header}
    #{column_data_one.create_rows.each{|row|return row + "\n"}}
    #{column_data_one.divider}
    HEREDOC
    assert_output(expected) {column_data_one.show}
  end


end
