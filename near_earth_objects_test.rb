require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'near_earth_objects'

class NearEarthObjectsTest < Minitest::Test
  # def test_a_date_returns_a_list_of_neos
  #   results = NearEarthObjects.find_neos_by_date('2019-03-30')
  #   assert_equal '(2019 GD4)', results[:astroid_list][0][:name]
  # end

  def test_it_exists
    new = NearEarthObjects.new("2012-01-01")

    assert_instance_of NearEarthObjects, new
  end

  def test_it_has_attributes
    new = NearEarthObjects.new("2012-01-01")
    expected = [{:links=>{:self=>"http://www.neowsapp.com/rest/v1/neo/3596036?api_key=D6amxCLxAODttsPBVAlb19uOIHeWgCHcMWHptoOM"}, :id=>"3596036", :neo_reference_id=>"3596036", :name=>"(2012 BC14)", :nasa_jpl_url=>"http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3596036", :absolute_magnitude_h=>24.7, :estimated_diameter=>{:kilometers=>{:estimated_diameter_min=>0.0305179233, :estimated_diameter_max=>0.0682401509}, :meters=>{:estimated_diameter_min=>30.5179232594, :estimated_diameter_max=>68.2401509401}, :miles=>{:estimated_diameter_min=>0.0189629525, :estimated_diameter_max=>0.0424024508}, :feet=>{:estimated_diameter_min=>100.1244233463, :estimated_diameter_max=>223.8850168104}}, :is_potentially_hazardous_asteroid=>false, :close_approach_data=>[{:close_approach_date=>"2012-01-01", :close_approach_date_full=>"2012-Jan-01 07:34", :epoch_date_close_approach=>1325403240000, :relative_velocity=>{:kilometers_per_second=>"12.7479591458", :kilometers_per_hour=>"45892.6529249866", :miles_per_hour=>"28515.9098133062"}, :miss_distance=>{:astronomical=>"0.0197501252", :lunar=>"7.6827987028", :kilometers=>"2954576.662153324", :miles=>"1835888.8065669112"}, :orbiting_body=>"Earth"}], :is_sentry_object=>false}, {:links=>{:self=>"http://www.neowsapp.com/rest/v1/neo/3591616?api_key=D6amxCLxAODttsPBVAlb19uOIHeWgCHcMWHptoOM"}, :id=>"3591616", :neo_reference_id=>"3591616", :name=>"(2011 YP10)", :nasa_jpl_url=>"http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3591616", :absolute_magnitude_h=>24.6, :estimated_diameter=>{:kilometers=>{:estimated_diameter_min=>0.0319561887, :estimated_diameter_max=>0.0714562102}, :meters=>{:estimated_diameter_min=>31.9561886721, :estimated_diameter_max=>71.4562101727}, :miles=>{:estimated_diameter_min=>0.0198566489, :estimated_diameter_max=>0.0444008168}, :feet=>{:estimated_diameter_min=>104.8431420431, :estimated_diameter_max=>234.436392583}}, :is_potentially_hazardous_asteroid=>false, :close_approach_data=>[{:close_approach_date=>"2012-01-01", :close_approach_date_full=>"2012-Jan-01 12:12", :epoch_date_close_approach=>1325419920000, :relative_velocity=>{:kilometers_per_second=>"5.2526169834", :kilometers_per_hour=>"18909.4211403325", :miles_per_hour=>"11749.5789302249"}, :miss_distance=>{:astronomical=>"0.0844691781", :lunar=>"32.8585102809", :kilometers=>"12636409.124410647", :miles=>"7851900.5324430486"}, :orbiting_body=>"Earth"}], :is_sentry_object=>false}, {:links=>{:self=>"http://www.neowsapp.com/rest/v1/neo/3605576?api_key=D6amxCLxAODttsPBVAlb19uOIHeWgCHcMWHptoOM"}, :id=>"3605576", :neo_reference_id=>"3605576", :name=>"(2012 LR1)", :nasa_jpl_url=>"http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3605576", :absolute_magnitude_h=>20.5, :estimated_diameter=>{:kilometers=>{:estimated_diameter_min=>0.2111324448, :estimated_diameter_max=>0.4721064988}, :meters=>{:estimated_diameter_min=>211.1324447897, :estimated_diameter_max=>472.1064988055}, :miles=>{:estimated_diameter_min=>0.1311915784, :estimated_diameter_max=>0.2933532873}, :feet=>{:estimated_diameter_min=>692.6917701639, :estimated_diameter_max=>1548.9058855411}}, :is_potentially_hazardous_asteroid=>true, :close_approach_data=>[{:close_approach_date=>"2012-01-01", :close_approach_date_full=>"2012-Jan-01 20:26", :epoch_date_close_approach=>1325449560000, :relative_velocity=>{:kilometers_per_second=>"22.4931312396", :kilometers_per_hour=>"80975.272462506", :miles_per_hour=>"50314.8852698277"}, :miss_distance=>{:astronomical=>"0.4827771074", :lunar=>"187.8002947786", :kilometers=>"72222426.951801238", :miles=>"44876935.1367155644"}, :orbiting_body=>"Earth"}], :is_sentry_object=>false}, {:links=>{:self=>"http://www.neowsapp.com/rest/v1/neo/3766593?api_key=D6amxCLxAODttsPBVAlb19uOIHeWgCHcMWHptoOM"}, :id=>"3766593", :neo_reference_id=>"3766593", :name=>"(2017 BX)", :nasa_jpl_url=>"http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3766593", :absolute_magnitude_h=>28.0, :estimated_diameter=>{:kilometers=>{:estimated_diameter_min=>0.0066765941, :estimated_diameter_max=>0.0149293183}, :meters=>{:estimated_diameter_min=>6.676594135, :estimated_diameter_max=>14.9293183439}, :miles=>{:estimated_diameter_min=>0.004148642, :estimated_diameter_max=>0.0092766455}, :feet=>{:estimated_diameter_min=>21.9048371017, :estimated_diameter_max=>48.9807047955}}, :is_potentially_hazardous_asteroid=>false, :close_approach_data=>[{:close_approach_date=>"2012-01-01", :close_approach_date_full=>"2012-Jan-01 01:08", :epoch_date_close_approach=>1325380080000, :relative_velocity=>{:kilometers_per_second=>"15.9167142433", :kilometers_per_hour=>"57300.1712759696", :miles_per_hour=>"35604.0980908935"}, :miss_distance=>{:astronomical=>"0.2929793249", :lunar=>"113.9689573861", :kilometers=>"43829082.959077963", :miles=>"27234129.2874153694"}, :orbiting_body=>"Earth"}], :is_sentry_object=>false}, {:links=>{:self=>"http://www.neowsapp.com/rest/v1/neo/2152671?api_key=D6amxCLxAODttsPBVAlb19uOIHeWgCHcMWHptoOM"}, :id=>"2152671", :neo_reference_id=>"2152671", :name=>"152671 (1998 HL3)", :nasa_jpl_url=>"http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=2152671", :absolute_magnitude_h=>20.1, :estimated_diameter=>{:kilometers=>{:estimated_diameter_min=>0.2538370294, :estimated_diameter_max=>0.5675968529}, :meters=>{:estimated_diameter_min=>253.8370293645, :estimated_diameter_max=>567.5968528656}, :miles=>{:estimated_diameter_min=>0.1577269688, :estimated_diameter_max=>0.3526882241}, :feet=>{:estimated_diameter_min=>832.7986794202, :estimated_diameter_max=>1862.1944587557}}, :is_potentially_hazardous_asteroid=>true, :close_approach_data=>[{:close_approach_date=>"2012-01-01", :close_approach_date_full=>"2012-Jan-01 12:49", :epoch_date_close_approach=>1325422140000, :relative_velocity=>{:kilometers_per_second=>"22.4861350473", :kilometers_per_hour=>"80950.0861702246", :miles_per_hour=>"50299.2354872709"}, :miss_distance=>{:astronomical=>"0.3717754223", :lunar=>"144.6206392747", :kilometers=>"55616811.294430501", :miles=>"34558684.0308868738"}, :orbiting_body=>"Earth"}], :is_sentry_object=>false}, {:links=>{:self=>"http://www.neowsapp.com/rest/v1/neo/3365921?api_key=D6amxCLxAODttsPBVAlb19uOIHeWgCHcMWHptoOM"}, :id=>"3365921", :neo_reference_id=>"3365921", :name=>"(2007 AM)", :nasa_jpl_url=>"http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3365921", :absolute_magnitude_h=>21.7, :estimated_diameter=>{:kilometers=>{:estimated_diameter_min=>0.1214940408, :estimated_diameter_max=>0.2716689341}, :meters=>{:estimated_diameter_min=>121.4940407996, :estimated_diameter_max=>271.6689340891}, :miles=>{:estimated_diameter_min=>0.0754928736, :estimated_diameter_max=>0.1688071972}, :feet=>{:estimated_diameter_min=>398.6025088171, :estimated_diameter_max=>891.3023057169}}, :is_potentially_hazardous_asteroid=>false, :close_approach_data=>[{:close_approach_date=>"2012-01-01", :close_approach_date_full=>"2012-Jan-01 08:43", :epoch_date_close_approach=>1325407380000, :relative_velocity=>{:kilometers_per_second=>"11.3581259862", :kilometers_per_hour=>"40889.2535503294", :miles_per_hour=>"25406.9920185366"}, :miss_distance=>{:astronomical=>"0.1906073615", :lunar=>"74.1462636235", :kilometers=>"28514455.286720005", :miles=>"17718060.917765869"}, :orbiting_body=>"Earth"}], :is_sentry_object=>false}, {:links=>{:self=>"http://www.neowsapp.com/rest/v1/neo/3674010?api_key=D6amxCLxAODttsPBVAlb19uOIHeWgCHcMWHptoOM"}, :id=>"3674010", :neo_reference_id=>"3674010", :name=>"(2014 MV18)", :nasa_jpl_url=>"http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3674010", :absolute_magnitude_h=>23.7, :estimated_diameter=>{:kilometers=>{:estimated_diameter_min=>0.0483676488, :estimated_diameter_max=>0.1081533507}, :meters=>{:estimated_diameter_min=>48.3676488219, :estimated_diameter_max=>108.1533506775}, :miles=>{:estimated_diameter_min=>0.0300542543, :estimated_diameter_max=>0.0672033557}, :feet=>{:estimated_diameter_min=>158.6865169607, :estimated_diameter_max=>354.8338390368}}, :is_potentially_hazardous_asteroid=>false, :close_approach_data=>[{:close_approach_date=>"2012-01-01", :close_approach_date_full=>"2012-Jan-01 15:29", :epoch_date_close_approach=>1325431740000, :relative_velocity=>{:kilometers_per_second=>"15.7466743148", :kilometers_per_hour=>"56688.0275333045", :miles_per_hour=>"35223.7357747913"}, :miss_distance=>{:astronomical=>"0.4111572982", :lunar=>"159.9401889998", :kilometers=>"61508256.045674834", :miles=>"38219458.0469633492"}, :orbiting_body=>"Earth"}], :is_sentry_object=>false}]
    assert_equal expected, new.parsed_asteroids_data
  end

  def test_largest_astroid_diameter
    new = NearEarthObjects.new("2012-01-01")

    assert_equal 1862, new.largest_astroid_diameter
  end

  def test_total_number_of_astroids
    new = NearEarthObjects.new("2012-01-01")

    assert_equal 7, new.total_number_of_astroids
  end

  def test_formatted_asteroid_data
    new = NearEarthObjects.new("2012-01-01")
    expected = [{:name=>"(2012 BC14)", :diameter=>"223 ft", :miss_distance=>"1835888 miles"}, {:name=>"(2011 YP10)", :diameter=>"234 ft", :miss_distance=>"7851900 miles"}, {:name=>"(2012 LR1)", :diameter=>"1548 ft", :miss_distance=>"44876935 miles"}, {:name=>"(2017 BX)", :diameter=>"48 ft", :miss_distance=>"27234129 miles"}, {:name=>"152671 (1998 HL3)", :diameter=>"1862 ft", :miss_distance=>"34558684 miles"}, {:name=>"(2007 AM)", :diameter=>"891 ft", :miss_distance=>"17718060 miles"}, {:name=>"(2014 MV18)", :diameter=>"354 ft", :miss_distance=>"38219458 miles"}]
    
    assert_equal expected, new.formatted_asteroid_data
  end
end
