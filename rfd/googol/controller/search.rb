require 'json'

class SController < Controller

  set_layout nil

  def q(query)
    response.header['Content-Type'] = 'application/json;'
    response.header['Content-Disposition'] = 'attachment'
    { q: query, people: find(query) }.to_json
  end

  private

  def find(query)
    ["Rik Hemsley", "Steven Pears", "Jamie Keeling", "Jordan Gray"].select {
      |name|
      name.upcase.include?(query.upcase)
    }
  end

end
