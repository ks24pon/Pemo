class DogsController < ApplicationController
    
    # 一覧表示
    def index
        # 全て表示
        @dog = Dog.all
    end
    # 投稿新規画面
    def new
        # インスタンス作成
        @dog = Dog.new
    end

    # 投稿処理
    def create
        # フォームから送信されたパラメータを基に新しいDogを作成
        @dog = Dog.new(dog_params)

        # 保存処理
        if @dog.save
            puts "保存成功: リダイレクトを実行します"
            # 成功後、詳細ページにリダイレクト
            redirect_to dogs_path
        else
            puts "保存成功: リダイレクトを実行します"
            # 失敗した場合は新規投稿画面を再表示
            render :new
        end
    end

    ## ストロングパラメータ
    private

    # Strong Parameters で許可するパラメータを指定
    def dog_params
        params.require(:dog).permit(:name, :breed, :age, :description, :image)
    end
end
