require 'swagger_helper'

RSpec.describe 'api/v1/products', type: :request do

  path '/api/v1/products/page/{page}' do
    # You'll want to customize the parameter types...
    parameter name: 'page', in: :path, type: :string, description: 'page'

    get('paginate product') do
      response(200, 'successful') do
        let(:page) { '123' }

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

  path '/api/v1/products' do

    get('list products') do
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
