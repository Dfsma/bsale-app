require 'swagger_helper'

RSpec.describe 'api/v1/searchs', type: :request do

  path '/api/v1/searchs?query={params}' do
    parameter name: 'params', in: :path, type: :string, description: 'parameter'
    
    get('list searches products') do
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    
  end

 
end
