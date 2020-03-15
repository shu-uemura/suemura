module API
  module Ver1
    class Root < Grape::API

      #http://localhost:3000/api/ver1
      format :json

      mount API::Ver1::Users

      # 404NotFoundの扱い
      route :any, '*path' do
        error! I18n.t('grape.errors.not_found'), 404
      end

    end
  end
end