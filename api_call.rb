require 'faraday'
require 'pry'
require 'figaro'


class ApiCall
  def get_data_from_nasa_api(date, url, key)
    Faraday.new(
      url: url,
      params: { start_date: date, api_key: key}
    )
  end

  def get_file_path(file_path)
    get("#{file_path}")
  end
end
