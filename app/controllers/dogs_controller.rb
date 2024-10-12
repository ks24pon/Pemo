class DogsController < ApplicationController
    
    # 投稿画面
    def new
        @dog = Dog.new
    end

    # 投稿処理
    def create

    end

    ## ストロングパラメータ
    private

    def dog_params

    end
end
