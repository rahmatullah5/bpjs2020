Rails.application.routes.draw do
  namespace :api do
    resources :sep, only: [:show]
    resources :rujukan, only: [:show]
    resources :propinsi, only: [:index] do
      scope module: 'propinsi' do 
        resources :kabupaten, only: [:index] do 
          scope module: 'kabupaten' do 
            resources :kecamatan, only: [:index]
          end
        end
      end
    end

    resources :faskes, only: [:index]
    resources :history_pelayanan, only: [:index]
    resources :kunjungan, only: [:index]
    resources :peserta, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
