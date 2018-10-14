require 'swagger_helper'

describe 'Users API' do

  path '/v1/users' do

    get 'Show all users' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :pagina, in: :query, type: :string, required: false, description: 'Show all users'

      response '201', 'request ok' do
        let(:user) { { pagina: 1 } }
        run_test!
      end

      response '422', 'invalid request' do
        run_test!
      end
    end
  end

end
